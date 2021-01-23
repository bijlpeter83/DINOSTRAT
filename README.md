# DINOSYS
The database of regional organic-walled dinoflagellate cyst events. This is version 1.0, completed in January 2021. Please cite Bijl, submitted to Earth system science data when using this database.

The database consists of 4 data frames:

1. Paleolatitude.csv This dataframe hosts the modern geographic position and paleolatitudinal evolution of sediemntary sections or outcrops used in this review.
Explanation of columns 
Source (chr): the citation of the paper that presents dinocyst events from this location
Geography (chr): geographic region, or country of the study
core or outcrop (chr): whether the study presents data from a core or an outcrop, or both 
location (chr): unique name for each geographic location
lat (dbl): present-day latitude of that location
long (dbl): present-day longitude of that location
Age (dbl): the age of the paleolatitude of that location
Paleolatitude (dbl): the paleotatitude of that location and age
lower (dbl): the lower uncertainty limit of that paleolatitude
upper (dbl): the upper uncertainty limit of that paleolatitude
interpolated (lgl): if TRUE, the paleolatitude was interpolated between 10 million year tie points, if FALSE, the paleolatitude is from a 10 million year tie point. For more information see paleolatitude.org and Van Hinsbergen et al., 2015
Stable (lgl): if TRUE, the site is on a stable, solid plate, and the paleolatitude calculation came from paleolatitude.org. If FALSE, the site is in an unstable plate boundary or orogenic zone, and different sources were used to estimate its paleolatitudinal evolution. See pal_lat source
tier (chr): the tier of calibration. For further information, see Bijl, submittes Earth System Science Data
pal_lat source (chr): indicates the source of the paleolatitude evolution of the site.

2. modernst.csv This dtatframe hosts the surface sediment sample locations. Source for this data is Marret et al., 2020, references therein and Mertens et al., 2014. We provide here the modified datasets from those sources.
Explanation of columns
Source (chr): source of the surface sediment location
location (chr): a unique name for each surface sediment station
lat (dbl): present-day latitude of that station
long (dbl): present-day longitude of that station

3. Dinoevents_Jan2021.csv This data frame hosts the regional dinoflagellate cyst events, their calibration to the GTS2021, their Age and Paleolatitude.
location (chr): Location of the event. corresponds to location column in Paleolatitude.csv
Family (chr): The taxonomic Family of the species based on Fensome et al., (1993) and Williams et al., (2017). [misc] contain species that are likely or certainly no dinocysts.
Subfamily (chr): The taxonomic subfamily of the species. If none were formally described, it says [all]. Some small subfamilies were lumped into a restgroup "other". 
genus (chr): The taxonomic genus of the species based on Fensome et al., (1993) and Williams et al., (2017), with exceptions (see text in Bijl, submitted to Earth System Science data).
species (chr): The taxonomic species name of based on Fensome et al., (1993) and Williams et al., (2017), with exceptions (see text in Bijl, submitted to Earth System Science data).
subspecies (chr): The taxonomic subspecies name of based on Fensome et al., (1993) and Williams et al., (2017), with exceptions (see text in Bijl, submitted to Earth System Science data). [NA] if no subspecies applies.
original entry (chr): the calibration of that event as recorded from the Source. 
Source (chr): study that presented the event
Calibration (chr): calibration of the event to the Geologic Time Scale 2012 (Gradstein et al., 2012)
FO_LO (chr): [FO] if the event is a first stratigraphic occurrence, [LO] if the event is a last stratigraphic occurrence.
Age (dbl): Age of the event, calculated through its Calibration
pal_lat (dbl): paleolatitude of the event, interpolated from the paleolatitude of the site in Paleolatitude.csv, using its Age.

4. modernsp.csv This dataframe hosts the dinocyst composition of the surface sediment sites modernst.csv. We adapted the data from Marret et al., 2020 and Mertens et al., 2014. We added suprageneric classification, and we converted relative abundance data to presence of taxa. columns follow those of Dinoevents_Jan2021.csv
Explanation of columns:
Family (chr): The taxonomic Family of the species based on Fensome et al., (1993) and Williams et al., (2017). [misc] contain species that are likely or certainly no dinocysts.
Subfamily (chr): The taxonomic subfamily of the species. If none were formally described, it says [all]. Some small subfamilies were lumped into a restgroup "other". 
genus (chr): The taxonomic genus of the species based on Fensome et al., (1993) and Williams et al., (2017).
species (chr): The taxonomic species name of based on Fensome et al., (1993) and Williams et al., (2017).
subspecies (chr): The taxonomic subspecies name of based on Fensome et al., (1993) and Williams et al., (2017). [NA] if no subspecies applies.
original entry (chr): Does not apply.
Source (chr): study that presented the event
Calibration (chr): Surface sediment samples are calibrated to 0 Ma by default in this review.
FO_LO (chr): These are by definition all [LO].
Age (dbl): 0 Ma, by default
pal_lat (dbl): paleolatitude of the event, equals modern latitude of the site.

References of studies used in this review:
