#Packages
library(sf)
library(rnaturalearth)
library(rnaturalearthdata)
library(tidyverse)
library(rgeos)
library(RColorBrewer)

#theme set
theme_set(theme_bw())

#load location data
modernst <- read_csv("https://raw.githubusercontent.com/bijlpeter83/DINOSTRAT/main/data/modernst.csv")
locations <- read_csv("https://raw.githubusercontent.com/bijlpeter83/DINOSTRAT/main/data/Paleolatitude.csv")
sites <- select(locations, location, long, lat, tier)
sites <- distinct(sites)
paleolat <- select(locations, source, geography, location, age, paleolatitude, lower, upper, interpolated, stable, tier)
paleolat$tier <- as.character(paleolat$tier)

#Set world map
world <- ne_countries(scale = "medium", returnclass = "sf")
class(world)

#Load colors of Geologic time scale banner
clrs <- read_csv("https://raw.githubusercontent.com/bijlpeter83/DINOSTRAT/main/data/CGMW_ICS_colour.csv")
clrs <- select(clrs, 'Long List (formatted)', 'Red', 'Green', 'Blue')
clrs <- rename(clrs, 'stage'= 'Long List (formatted)')

stg <- read_csv("https://raw.githubusercontent.com/bijlpeter83/DINOSTRAT/main/data/stages.csv")
stages <- right_join(stg, clrs, by= "stage")
typcol <- select(stages, stage, Red, Green, Blue)
typcol <- transmute(typcol, stage, RGB= rgb(Red, Green, Blue, maxColorValue = 255))
stgcol <- setNames(as.character(typcol$RGB), as.character(typcol$stage))

#Load main database
sp_dat <- read_csv("https://raw.githubusercontent.com/bijlpeter83/DINOSTRAT/main/data/DINOEVENTS.csv")
sp_dat <- unite(sp_dat, family, subfamily, col="Family", sep=", ", na.rm=TRUE, remove = TRUE)
sp_dat <- unite(sp_dat, genus, species, subspecies, col = "taxa", sep= " ", na.rm=TRUE, remove=FALSE)

#Load modern species distributions
modernsp <- read_csv("https://raw.githubusercontent.com/bijlpeter83/DINOSTRAT/main/data/modernsp.csv")
modernsp$subspecies <- as.character(modernsp$subspecies)
modernsp <- unite(modernsp, family, subfamily, col="Family", sep=", ", na.rm=TRUE, remove = TRUE)
modernsp <- unite(modernsp, genus, species, subspecies, col = "taxa", sep= " ", na.rm=TRUE, remove=FALSE)
modernsp$subspecies <- as.character(modernsp$subspecies)
modernsp$'original entry' <- as.character(modernsp$'original entry')

#Some data wrangling for plotting
sp_dat1 <- bind_rows(sp_dat, modernsp)
FO_sp <- filter(sp_dat1, FO_LO=="FO")
LO_sp <- filter(sp_dat1, FO_LO=="LO")

Hist_FO <- filter(FO_sp%>%group_by(taxa), Age==max(age))
Hist_LO <- filter(LO_sp%>%group_by(taxa), Age==min(age))
Hist <- bind_rows(Hist_FO, Hist_LO)
Hist_GF <- filter(FO_sp%>%group_by(genus), Age==max(age))
Hist_GL <- filter(LO_sp%>%group_by(genus), Age==min(age))
Hist_G <- bind_rows(Hist_GF, Hist_GL)

amodernst <- select(modernst, location, lat, long)
asites <- select(sites, location, lat, long)
alatlong <- bind_rows(amodernst, asites)

sp_dat3 <- right_join(sp_dat1, alatlong, by='location')
sp_datm <- filter(sp_dat3, age == 0)
sp_datp <- filter(sp_dat3, age>0)

#This set of three functions plots 3 plots for every genus: a age over paleolatitude plot, a histogram plot and a map.
for(i in unique(sp_dat3$genus)){
  
  pdf(file=paste("Distribution ", i, ".pdf", sep=""))
  
  plot(ggplot()+
         geom_line(paleolat, mapping=aes(x=age, y=paleolatitude, group=location), orientation = "x", color = "grey", alpha=0.5)+
         geom_point(filter(LO_sp, genus == i), mapping=aes(x=age, y=pal_lat), size=0.2, color = "red")+
         geom_line(filter(LO_sp, genus == i), mapping=aes(x=age, y=pal_lat, group=taxa), linewidth=0.2, color = "red", orientation = "y")+
         geom_point(filter(FO_sp, genus == i), mapping=aes(x=age, y=pal_lat), size=0.2, color = "blue")+
         geom_line(filter(FO_sp, genus == i), mapping=aes(x=age, y=pal_lat, group=taxa), linewidth=0.2, color = "blue", orientation = "y")+
         scale_x_continuous(name="Age (Ma; GTS2020)", breaks = seq(0, 250, 10), minor_breaks = seq(0, 250, 5), expand = expansion(mult=0, add=1))+
         scale_y_continuous(name = "Paleolatitude", breaks = seq(-90, 90, 30), minor_breaks = seq(-90, 90, 10), labels = seq(-90, 90, 30), expand = expansion(mult=0, add=0))+
         ggtitle(paste0(i))+
         geom_rect(stages, mapping=aes(xmin=bage, xmax=tage, ymin=-100, ymax=-80), color = "Black", fill=stgcol)+
         geom_text(stages, mapping=aes(label=stage, y=-90, x=(tage+(bage-tage)/2)), size = 1.6, angle=90)
  )
  
  dev.off() 
  
}


for(i in unique(sp_dat3$genus)){
  
  pdf(file=paste("Histogram ", i, ".pdf", sep=""))
  
  plot(ggplot()+
         geom_histogram(filter(Hist_FO, genus==i), mapping=aes(x=age, y=..count..), bins = 125, fill="blue")+
         geom_histogram(filter(Hist_LO, genus==i), mapping=aes(x=age, y=-..count..), bins = 125, fill="red3")+
         geom_hline(mapping=aes(yintercept=0))+
         scale_y_continuous(limits=c(-5, 3), breaks = seq(-5, 3, 1), expand = expansion(mult=0, add=0))+
         scale_x_continuous(limits=c(0,250), breaks = seq(0,250,10), minor_breaks = seq(0,250,5), expand = expansion(mult=0, add=1))+
         theme(aspect.ratio = 0.3, panel.grid = element_blank())+
         ggtitle(paste0(i))+
         xlab("Age (Ma; GTS2020)")+ ylab("Count of events")+
         geom_rect(stages, mapping=aes(xmin=bage, xmax=tage, ymin=-5, ymax=-3), color = "Black", fill=stgcol)+
         geom_text(stages, mapping=aes(label=stage, y=-4, x=(tage+(bage-tage)/2)), size = 1.6, angle=90)
  )
  
  dev.off() 
  
}


for(i in unique(sp_dat3$genus)){
  
  pdf(file=paste("Map ", i, ".pdf", sep=""))
  
  plot(ggplot()+
         geom_sf(data = world, fill="darkgrey")+
         coord_sf()+
         geom_point(filter(sp_datm, genus == i), mapping=aes(x=long, y=lat), color="darkgreen", size=0.5)+
         geom_point(filter(sp_datp, genus == i), mapping = aes(x=long, y=lat), color = "green")+
         scale_x_continuous(limits=c(-180, 180), breaks = seq(-180, 180, 30), expand = expansion(mult=0, add=0))+
         scale_y_continuous(expand = expansion(mult=0, add=0), limits=c(-90, 90), breaks = seq(-90, 90, 30))+
         theme(panel.background = element_rect(fill = "lightblue"))+
         xlab("Longitude")+
         ylab("Latitude")+
         ggtitle(paste0("Genus " , i)))
  
  dev.off() 
  
}

#This set of three functions plots 3 plots for every species: an age over paleolatitude plot, a histogram plot and a map.
for(i in unique(sp_dat3$taxa)){
  
  pdf(file=paste("Distribution ", i, ".pdf", sep=""))
  
  plot(ggplot()+
         geom_line(paleolat, mapping=aes(x=age, y=paleolatitude, group=location), orientation = "x", color = "grey", alpha=0.5)+
         geom_point(filter(LO_sp, taxa == i), mapping=aes(x=age, y=pal_lat), size=0.2, color = "red")+
         geom_line(filter(LO_sp, taxa == i), mapping=aes(x=age, y=pal_lat, group=taxa), size=0.2, color = "red", orientation = "y")+
         geom_point(filter(FO_sp, taxa == i), mapping=aes(x=age, y=pal_lat), size=0.2, color = "blue")+
         geom_line(filter(FO_sp, taxa == i), mapping=aes(x=age, y=pal_lat, group=taxa), size=0.2, color = "blue", orientation = "y")+
         scale_x_continuous(name="Age (Ma; GTS2020)", breaks = seq(0, 250, 10), expand = expansion(mult=0, add=1))+
         scale_y_continuous(name = "Paleolatitude", breaks = seq(-90, 90, 30), minor_breaks = seq(-90, 90, 10), labels = seq(-90, 90, 30), expand = expansion(mult=0, add=0))+
         ggtitle(paste0(i))+
         geom_rect(stages, mapping=aes(xmin=bage, xmax=tage, ymin=-100, ymax=-80), color = "Black", fill=stgcol)+
         geom_text(stages, mapping=aes(label=stage, y=-90, x=(tage+(bage-tage)/2)), size = 1.6, angle=90)
  )
  
  dev.off() 
  
}


for(i in unique(sp_dat3$taxa)){
  
  pdf(file=paste("Histogram ", i, ".pdf", sep=""))
  
  plot(ggplot()+
         geom_histogram(filter(Hist_FO, taxa==i), mapping=aes(x=age, y=..count..), bins = 125, fill="blue")+
         geom_histogram(filter(Hist_LO, taxa==i), mapping=aes(x=age, y=-..count..), bins = 125, fill="red3")+
         geom_segment(filter(Hist, taxa==i), mapping=aes(x=max(age), y=0, xend=min(age), yend=0), linewidth=0.25)+
         scale_y_continuous(limits=c(-5, 3), breaks = seq(-5, 3, 1), expand = expansion(mult=0, add=0))+
         scale_x_continuous(limits=c(0,250), breaks = seq(0,250,10), expand = expansion(mult=0, add=1))+
         theme(aspect.ratio = 0.3, panel.grid = element_blank())+
         ggtitle(paste0(i))+
         xlab("Age (Ma; GTS2020)")+ ylab("Count of events")
         geom_rect(stages, mapping=aes(xmin=bage, xmax=tage, ymin=-5, ymax=-3), color = "Black", fill=stgcol)+
         geom_text(stages, mapping=aes(label=stage, y=-4, x=(tage+(bage-tage)/2)), size = 1.6, angle=90)
  )
  
  dev.off() 
  
}


for(i in unique(sp_dat3$taxa)){
  
  pdf(file=paste("Map ", i, ".pdf", sep=""))
  
  plot(ggplot()+
         geom_sf(data = world, fill="darkgrey")+
         coord_sf()+
         geom_point(filter(sp_datm, taxa == i), mapping=aes(x=long, y=lat), color="darkgreen", size = 0.5)+
         geom_point(filter(sp_datp, taxa == i), mapping = aes(x=long, y=lat), color = "green")+
         scale_x_continuous(limits=c(-180, 180), breaks = seq(-180, 180, 30), expand = expansion(mult=0, add=0))+
         scale_y_continuous(expand = expansion(mult=0, add=0), limits=c(-90, 90), breaks = seq(-90, 90, 30))+
         theme(panel.background = element_rect(fill = "lightblue"))+
         xlab("Longitude")+
         ylab("Latitude")+
         ggtitle(paste0("Species " , i)))
  
  dev.off() 
  
}
