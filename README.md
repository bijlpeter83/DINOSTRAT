[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.4471204.svg)](https://doi.org/10.5281/zenodo.4471204)

# DINOSTRAT
The database of regional organic-walled dinoflagellate cyst events. This is DINOSTRAT version 1.1, with data predating January 2021, updated in November 2021. 

Updates: adjusted some entries based on reported errors (thanks!), corrected references in the "modernst.csv", 

Please cite Bijl, 2021 Earth System Science Data when using this database.

DINOSTRAT consists of 4 data frames:

1. Paleolatitude.csv This dataframe hosts the modern geographic position and paleolatitudinal evolution of sediemntary sections or outcrops used in this review.
Explanation of columns: 
Source (chr): the citation of the paper that presents dinocyst events from this location; 
Geography (chr): geographic region, or country of the study; 
core or outcrop (chr): whether the study presents data from a core or an outcrop, or both; 
location (chr): unique name for each geographic location; 
lat (dbl): present-day latitude of that location; 
long (dbl): present-day longitude of that location; 
Age (dbl): the age of the paleolatitude of that location; 
Paleolatitude (dbl): the paleotatitude of that location and age; 
lower (dbl): the lower uncertainty limit of that paleolatitude; 
upper (dbl): the upper uncertainty limit of that paleolatitude; 
interpolated (lgl): if TRUE, the paleolatitude was interpolated between 10 million year tie points, if FALSE, the paleolatitude is from a 10 million year tie point. For more information see paleolatitude.org and Van Hinsbergen et al., 2015; 
Stable (lgl): if TRUE, the site is on a stable, solid plate, and the paleolatitude calculation came from paleolatitude.org. If FALSE, the site is in an unstable plate boundary or orogenic zone, and different sources were used to estimate its paleolatitudinal evolution. See pal_lat source; 
tier (chr): the tier of calibration. For further information, see Bijl, submittes Earth System Science Data; 
pal_lat source (chr): indicates the source of the paleolatitude evolution of the site.

2. modernst.csv This dataframe hosts the surface sediment sample locations. Source for this data is Marret et al., 2020, references therein and Mertens et al., 2014. We provide here the modified datasets from those sources.
Explanation of columns: 
Source (chr): source of the surface sediment location; 
location (chr): a unique name for each surface sediment station; 
lat (dbl): present-day latitude of that station; 
long (dbl): present-day longitude of that station; 

3. Dinoevents_Jan2021.csv This data frame hosts the regional dinoflagellate cyst events, their calibration to the GTS2021, their Age and Paleolatitude.
Explanation of columns: 
location (chr): Location of the event. corresponds to location column in Paleolatitude.csv; 
Family (chr): The taxonomic Family of the species based on Fensome et al., (1993) and Williams et al., (2017). [misc] contain species that are likely or certainly no dinocysts; 
Subfamily (chr): The taxonomic subfamily of the species. If none were formally described, it says [all]. Some small subfamilies were lumped into a restgroup "other"; 
genus (chr): The taxonomic genus of the species based on Fensome et al., (1993) and Williams et al., (2017), with exceptions (see text in Bijl, submitted to Earth System Science data); 
species (chr): The taxonomic species name of based on Fensome et al., (1993) and Williams et al., (2017), with exceptions (see text in Bijl, submitted to Earth System Science data); 
subspecies (chr): The taxonomic subspecies name of based on Fensome et al., (1993) and Williams et al., (2017), with exceptions (see text in Bijl, submitted to Earth System Science data). [NA] if no subspecies applies; 
original entry (chr): the calibration of that event as recorded from the Source; 
Source (chr): study that presented the event; 
Calibration (chr): calibration of the event to the Geologic Time Scale 2012 (Gradstein et al., 2012); 
FO_LO (chr): [FO] if the event is a first stratigraphic occurrence, [LO] if the event is a last stratigraphic occurrence; 
Age (dbl): Age of the event, calculated through its Calibration; 
pal_lat (dbl): paleolatitude of the event, interpolated from the paleolatitude of the site in Paleolatitude.csv, using its Age.

4. modernsp.csv This dataframe hosts the dinocyst composition of the surface sediment sites modernst.csv. We adapted the data from Marret et al., 2020 and Mertens et al., 2014. We added suprageneric classification, and we converted relative abundance data to presence of taxa. columns follow those of Dinoevents_Jan2021.csv
Explanation of columns:
Family (chr): The taxonomic Family of the species based on Fensome et al., (1993) and Williams et al., (2017). [misc] contain species that are likely or certainly no dinocysts; 
Subfamily (chr): The taxonomic subfamily of the species. If none were formally described, it says [all]. Some small subfamilies were lumped into a restgroup "other";  
genus (chr): The taxonomic genus of the species based on Fensome et al., (1993) and Williams et al., (2017); 
species (chr): The taxonomic species name of based on Fensome et al., (1993) and Williams et al., (2017); 
subspecies (chr): The taxonomic subspecies name of based on Fensome et al., (1993) and Williams et al., (2017). [NA] if no subspecies applies; 
original entry (chr): Does not apply; 
Source (chr): study that presented the event; 
Calibration (chr): Surface sediment samples are calibrated to 0 Ma by default in this review; 
FO_LO (chr): These are by definition all [LO]; 
Age (dbl): 0 Ma, by default; 
pal_lat (dbl): paleolatitude of the event, equals modern latitude of the site. 

References of studies used in this review:
Açıkalın, S., Vellekoop, J., Ocakoğlu, F., Yılmaz, İ. Ö., Smit, J., Altıner, S. Ö., Goderis, S., Vonhof, H., Speijer, R. P., Woelders, L., Fornaciari, E. and Brinkhuis, H.: Geochemical and palaeontological characterization of a new K-Pg Boundary locality from the Northern branch of the Neo-Tethys: Mudurnu – Göynük Basin, NW Turkey, Cretaceous Research, 52, 251–267, 2015.
Århus, N., Birkelund, T. and Smelror, M.: Biostratigraphy of some Callovian and Oxfordian cores off Vega, Helgeland, Norsk Geologisk Tidsskrift, 69, 39–56, 1989.
Aubry, A. M. R., De Schepper, S. and de Vernal, A.: Dinocyst and acritarch biostratigraphy of the Late Pliocene to Early Pleistocene at Integrated Ocean Drilling Program Site U1307 in the Labrador Sea, Journal of Micropaleontology, 39(1), 41–60, doi:10.5194/jm-39-41-2020, 2020.
Awad, W. K. and Oboh-Ikuenobe, F. E.: Early Paleogene dinoflagellate cysts from ODP Hole 959D, Côte d’Ivoire-Ghana Transform Margin, West Africa: New species, biostratigraphy and paleoenvironmental implications, Journal of African Earth Science, 123, 123–144, doi:10.1016/j.jafrearsci.2016.07.014, 2016.
Awad, W. K. and Oboh-Ikuenobe, F. E.: Paleogene-early Neogene paleoenvironmental reconstruction based on palynological analysis of ODP Hole 959A, West Africa, Marine Micropaleontology, 148, 29–45, 2019.
Bailey, D. A., Milner, P. and Varney, T.: Some dinoflagellate cysts from the Kimmeridge Clay Formation in North Yorkshire and Dorset, U.K., Proceedings of the Yorkshire Geological Society, 51, 235–243, 1997.
Baruffini, L., Lottaroli, F. and Torricelli, S.: Integrated high-resolution stratigraphy of the lower oligocene tusa tuffite formation in the Calabro-Lucano area and sicily (southern Italy), Rivista Italiana di Paleontologia e Stratigrafia, 108(3), 457–478, 2002.
Besems, R.: Dinoflagellate cyst biostratigraphy of Tertiary and Quaternary deposits of offshore NW Borneo, Geological Society of Malaysia, bulletin, 33, 65–93, 1993.
Biffi, U. and Manum, S. B.: Late Eocene-Early Miocene dinoflagellate cyst stratigraphy from the Marche region (Central Italy), Bulletino della Società Paleontologica Italiana, 27(2), 163, 1988.
Bijl, P. K. and Brinkhuis, H.: A new genus and two new species of dinoflagellate cysts from lower Eocene marine sediments of the Wilkes Land Margin, Antarctica, Review of Palaeobotany and Palynology, 220, 88–97, doi:10.1016/j.revpalbo.2015.05.004, 2015.
Bijl, P. K., Sluijs, A. and Brinkhuis, H.: A magneto- chemo- stratigraphically calibrated dinoflagellate cyst zonation of the early Paleogene South Pacific Ocean, Earth-Science reviews, 124, 1–31, 2013.
Bijl, P. K., Sluijs, A. and Brinkhuis, H.: Erratum to “A magneto- and chemostratigraphically calibrated dinoflagellate cyst zonation of the early Paleogene South Pacific Ocean” [Earth Sci. Rev. 124 (2013) 1-31], Earth-Science reviews, 134, 160–163, doi:10.1016/j.earscirev.2014.03.010, 2014.
Bijl, P. K., Houben, A. J. P., Bruls, A., Pross, J. and Sangiorgi, F.: Stratigraphic calibration of Oligocene-Miocene organic-walled dinoflagellate cysts from offshore Wilkes Land, East Antarctica, and a zonation proposal, Journal of Micropalaeontology, 37(1), 105–138, doi:10.5194/jm-37-105-2018, 2018.
Bowman, V., Ineson, J., Riding, J., Crame, J., Francis, J., Condon, D., Whittle, R. and Ferraccioli, F.: The Paleocene of Antarctica: Dinoflagellate cyst biostratigraphy, chronostratigraphy and implications for the palaeo-Pacific margin of Gondwana, Gondwana Research, 38, 132–148, doi:10.1016/j.gr.2015.10.018, 2016.
Bowman, V. C., Francis, J. E., Riding, J. B., Hunter, S. J. and Haywood, A. M.: A latest Cretaceous to earliest Paleogene dinoflagellate cyst zonation from Antarctica, and implications for phytoprovincialism in the high southern latitudes, Review of Palaeobotany and Palynology, 171, 40–56, doi:10.1016/j.revpalbo.2011.11.004, 2012.
Brinkhuis, H.: Late Eocene to Early Oligocene dinoflagellate cysts from the Priabonian type-area (northeast Italy); biostratigraphy and palaeoenvironmental interpretation, Palaeogeography, Palaeoclimatology, Palaeoecology, 107, 121–163, 1994.
Brinkhuis, H. and Biffi, U.: Dinoflagellate cyst stratigraphy of the Eocene / Oligocene transition in Central Italy, Marine Micropaleontology, 22, 131–183, 1993.
Brinkhuis, H., Powell, A. J. and Zevenboom, D.: High-resolution dinoflagellate cyst stratigraphy of the Oligocene / Miocene transition interval in northwest and central Italy, in: Neogene and Quaternary Dinoflagellate Cysts and Acritarchs, edited by M. J. Head and J. H. Wrenn, American Association of Stratigraphic Palynologists Foundation, Dallas., 1992.
Brinkhuis, H., Bujak, J. P., Smit, J., Versteegh, G. J. M. and Visscher, H.: Dinoflagellate-based sea surface temperature reconstructions across the Cretaceous-Tertiary boundary, Palaeogeography, Palaeoclimatology, Palaeoecology, 141(1–2), 67–83, 1998.
Brinkhuis, H., Munsterman, D. M., Sengers, S., Sluijs, A., Warnaar, J. and Williams, G. L.: Late Eocene to Quaternary dinoflagellate cysts from ODP Site 1168, off western Tasmania, edited by N. Exon and J. P. Kennett, Proceedings of the ODP, Scientific results, Leg 189, U.S. Government Printing Office, College Station, Texas., 2003a.
Brinkhuis, H., Sengers, S., Sluijs, A., Warnaar, J. and Williams, G. L.: Latest Cretaceous to earliest Oligocene, and Quaternary dinoflagellates from ODP Site 1172, East Tasman Plateau, edited by N. Exon and J. P. Kennett, Proceedings of the ODP, Scientific results, Leg 189, U.S. Government Printing Office, College Station, Texas., 2003b.
Brown, S. and Downie, C.: Dinoflagellate cyst biostratigraphy of late Paleocene and early Eocene sediments from Holes 552, 553A, and 555, Leg 81, Deep Sea Drilling Project ( Rockall Plateau), Proceedings of the deep sea drilling project, Initial reports, vol. 81, Washington, U.S.A., 565–579, 1984.
Brown, S. and Downie, C.: Dinoflagellate cyst stratigraphy of Paleocene to Miocene sediments from the Goban Spur (Sites 548-550, Leg 80)., Proceedings of the deep sea drilling project, Initial reports, vol. 80, Washington, U.S.A., 643–651, 1985.
Bucefalo Palliani, R. and Riding, J. B.: Lower Toarcian palynostratigraphy of Pozzale, central Italy, Palynology, 21, 91–103, 1997a.
Bucefalo Palliani, R. and Riding, J. B.: The influence of palaeoenvironmental change on dinoflagellate cyst distribution. An example from the Lower and Middle Jurassic of Quercy, southwest France, Bulletin du Centre de recherches Elf exploration production, 21(1), 107–123, 1997b.
Bucefalo Palliani, R. and Riding, J. B.: A palynological investigation of the Lower and lowermost Middle Jurassic strata (Sinemurian to Aalenian) from North Yorkshire, UK, Proceedings of the Yorkshire Geological Society, 53, 1–16, 2000.
Bucefalo Palliani, R. and Riding, J. B.: Biostratigraphy, Provincialism and evolution of European Early Jurassic (Pliensbachian to early Toarcian) dinoflagellate cysts, Palynology, 27, 179–214, 2003.
Bujak, J. P. and Matsuoka, K.: Late Cenozoic dinoflagellate cyst zonation in the western and Northern Pacific, Palynology, 17, 7–25, 1986.
Bujak, J. P. and Mudge, D. C.: A high-resolution North Sea Eocene dinocyst zonation, Journal of the Geological Society London, 151, 449–462, 1994.
Correia, V. F., Riding, J. B., Henriques, M. H., Fernandes, P., Pereira, Z. and Wiggan, N. J.: The middle Jurassic palynostratigraphy of the northern Lusitanian Basin, Portugal, Newsletters on Stratigraphy, 52(1), 73–79, doi:10.1127/nos/2018/0471, 2019.
Costa, L. I. and Davey, R. J.: Dinoflagellate cysts of the Cretaceous system, in: A stratigraphix index of dinoflagellate cysts, in: A stratigraphix index of dinoflagellate cysts, edited by A. J. Powell., British Micropaleontological Society Publications series, London, UK, 99–154, 1992.
Costa, L. I. and Downie, C.: The Wetzeliellaceae; Palaeogene dinoflagellates, in: Proceedings of the 4th International Palynological Conference, Lucknow, 34–46, 1979.
Crouch, E. M., Willumsen, P. S., Kulhanek, D. K. and Gibbs, S.: A revised Paleocene (Teurian) dinoflagellate cyst zonation from eastern New Zealand, Palaeogeography, Palaeoclimatology, Palaeoecology, 202, 47–79, 2014.
Crouch, E. M., Shepherd, C. L., Morgans, H. E. G., Naafs, B. D. A., Dallanave, E., Phillips, A., Hollis, C. J. and Pancost, R. D.: Climatic and environmental changes across the early Eocene climatic optimum at mid-Waipara River, Canterbury Basin, New Zealand, Earth-Science reviews, 200, doi:10.1016/j.earscirev.2019.102961, 2020.
Dallanave, E., Bachtadse, V., Crouch, E. M., Tauxe, L., Shepherd, C. L., Morgans, H. E. G., Hollis, C. J., Hines, B. R. and Sugisaki, S.: Constraining early to middle Eocene climate evolution of the southwest Pacific and Southern Ocean, Earth and Planetary Science Letters, 433, 380–392, doi:10.1016/j.epsl.2015.11.010, 2016.
Davey, R. J.: Dinocyst stratigraphy of the latest Jurassic to Early Cretaceous of the Haldager No. 1 borehole, Denmark, Danmarks Geologiske Undersögelse, Series B, 6, 1–57, 1982.
Davey, R. J.: A summary of the palynology of the lower Hauterivian (Lower Cretaceous) from Speeton, east England, Neues Jahrbuch für Paläontologische Abhandlungen, 122(1), 83–93, 2001.
Davey, R. J.: Marine Apto-Albian palynomorphs from Holes 400A and 402A, IPOD Leg 48, northern Bay of Biscay, in: Init. Rep. DSDP vol. 48, edited by L. Montardert et al., DSDP, Washington, USA., 1979.
Davey, R. J. and Verdier, J.-P.: An investigation of microplankton assemblages from the Albian of the Paris Basin, Verh., .Ned.Akad.Wet., Afd.Natuurkd., Eerste Reeks, 26, 1–58, 1971.
De Lira Mota, M. A., Harrington, G. and Dunkley Jones, T.: Organic-walled dinoflagellate cyst biostratigraphy of the upper Eocene to lower Oligocene Yazoo Formation, US Gulf Coast, Journal of Micropalaeontology, 39(1), 1–26, doi:10.5194/jm-39-1-2020.
De Schepper, S. and Head, M. J.: Age calibration of dinoflagellate cyst and acritarch events in the Pliocene-Pleistocene of the eastern North Atlantic (DSDP Hole 610A), Stratigraphy, 5(2), 137–161, 2008.
De Schepper, S. and Head, M. J.: Pliocene and pleistocene dinoflagellate cyst and acritarch zonation of DSDP Hole 610A, Eastern North Atlantic, Palynology, 33, 179–218, 2009.
De Schepper, S., Beck, K. M. and Mangerud, G.: Late Neogene dinoflagellate cyst and acritarch biostratigraphy for Ocean Drilling Program Hole 642B, Norwegian Sea, Review of Palaeobotany and Palynology, 236, 12–32, doi:10.1016/j.revpalbo.2016.08.005, 2017.
De Vernal, A. and Mudie, P. J.: Late Pliocene to Holocene palynostratigraphy at ODP Site 645, Baffin Bay, edited by S. P. Srivastava, M. Arthur, and B. Clement, proceedings of the ODP,scientific results, Leg 104, College Station, Texas, USA., 1989.
De Vernal, A., Londeix, L., Mudie, P. J., Harland, R., Morzadec-Kerfourn, M. T., Turon, J.-L. and Wrenn, J. H.: Quaternary organic-walled dinoflagellate cysts of the North Atlantic Ocean and adjacent seas: ecostratigraphy and biostratigraphy, in: Neogene and Quaternary dinoflagellate cysts and acritarchs, edited by M. J. Head and J. H. Wrenn, AASP Foundation, 289–329, 1992.
De Verteuil, L. and Norris, G.: Miocene dinoflagellate stratigraphy and systematics of Maryland and Virginia, Micropaleontology, 1–172, 1996.
Dimter, A. and Smelror, M.: Callovian (Middle Jurassic) marine microplankton from southwestern Germany: Biostratigraphy and paleoenvironmental interpretations, Palaeogeography, Palaeoclimatology, Palaeoecology, 80(3–4), 173–195, doi:10.1016/0031-0182(90)90131-P, 1990.
Dodsworth, P.: Trans-Atlantic dinoflagellate cyst stratigraphy across the Cenomanian-Turonian (Cretaceous) Stage boundary, Journal of Micropaleontology, 19, 69–84, 2000.
Duffield, S. L. and Stein, J. A.: Peridiniacean-dominated cyst assemblage from the Miocene of the Gulf of Mexico shelf, offshore Louisiana, American Association of Stratigraphic Palynologists Contribution Series, 17, 27–45, 1986.
Duque-Herrera, A.-F., Helenes, J., Pardo-Trujillo, A., Flores-Villarejo, J.-A. and Sierro-Sánchez, F.-J.: Miocene biostratigraphy and paleoecology from dinoflagellates, benthic foraminifera and calcareous nannofossils on the Colombian Pacific coast, Marine Micropaleontology, 141, 42–54, doi:10.1016/j.marmicro.2018.05.002, 2018.
Duxbury, S.: A study of dinoflagellate cysts and acritarchs from the Lower Green- sand (Aptian to Lower Albian) of the Isle of Wight, southern England, Palaeontographica, Abt.B, 186, 18–80, 1983.
Duxbury, S.: A palynological zonation scheme for the Lower Cretaceous - United Kingdom Sector, Central North Sea, Neues Jahrb.Geol.Palaontol.Abh., 219(1–2), 95–137, 2001.
Dybkjær, K. and Piasecki, S.: A new Neogene biostratigraphy for Denmark, Geological Survey of Denmark and Greenland Bulletin, 1–29, 2008.
Dybkjær, K. and Piasecki, S.: Neogene dinocyst zonation for the eastern North Sea Basin, Denmark, Review of Palaeobotany and Palynology, 161(1–2), 1–29, doi:10.1016/j.revpalbo.2010.02.005, 2010.
Egger, L. M., Sliwinska, K. K., van Peer, T. E., Liebrand, D., Lippert, P. C., Friedrich, O., Wilson, P. A., Norris, R. D. and Pross, J.: Magnetostratigraphically-calibrated dinoflagellate cyst bioevents for the uppermost Eocene to lowermost Miocene of the western North Atlantic (IODP Expedition 342, Paleogene Newfoundland sediment drifts), Review of palaeobotany and palynology, 234, 159–185, doi:10.1016/j.revpalbo.2016.08.002, 2016.
Eldrett, J. S. and Harding, I. C.: Palynological analyses of Eocene to Oligocene sediments from DSDP Site 338, Outer Vøring Plateau, Marine Micropaleontology, 73(3–4), 226–240, 2009.
Eldrett, J. S., Harding, I. C., Firth, J. V. and Roberts, A. P.: Magnetostratigraphic calibration of Eocene-Oligocene dinoflagellate cyst biostratigraphy from the Norwegian-Greenland Sea, Marine Geology, 204(1–2), 91–127, 2004.
Eldrett, J. S., Harding, I. C., Wilshaw, R. and Xuan, C.: A new high northern latitude dinocyst-based magneto-biostratigraphic calibration for the Norwegian-Greenland Sea, Newsletters on Stratigraphy, 52(4), 435–460, 2019.
Eshet, Y., Moshkovitz, S., Habib, D., Benjamini, C. and Magaritz, M.: Calcareous nannofossil and dinoflagellate stratigraphy across the Cretaceous/Tertiary boundary at Hor Hahar, Israel, Marine Micropaleontology, 18(3), 199–228, doi:10.1016/0377-8398(92)90013-A, 1992.
Feist-Burkhardt and S. Monteil, E.: Dinoflagellate cysts from the Bajocian stratotype (Calvados, Normandy, western France). Kystes de dinoflagellés du stratotype du Bajocien (Calvados, Normandie, France), Bulletin du Centre de recherches Elf exploration production, 21(1), 31–105, 1997.
Feist-Burkhardt, S.: Dinoflagellate assemblages of the Hausen coreholes (Aalenian to Early Bajocian), southwest Germany, Bull. Centres Rech. Explor.-Prod. Elf-Aquitaine, 14(2), 611–633, 1990.
Fensome, R. A., Crux, J. A., Gard, G., MacRae, R. A., Williams, G. L., Thomas, F. C., Fiorini, F. and Wach, G.: The last 100 million years on the Scotian Margin, offshore eastern Canada: an event-stratigraphic scheme emphasizing biostratigraphic data, Atlantic Geology, 44, 93–126, 2008.
Firth, J. V.: Upper middle Eocene to Oligocene dinoflagellate biostratigraphy and assemblage variations in Hole 913B, Greenland Sea, in: Thiede, J., Myrhe, A.M., Firth, J.V., Johnson, G.L., Ruddiman, W.F.(Eds.) Proceedings of the Ocean Drilling Program.Scientific Results, 203–242, 1996.
Firth, J. V., Eldrett, J. S., Harding, I. C., Coxall, H. K. and Wade, B. S.: Integrated biomagnetochronology for the palaeogene of ODP Hole 647A: Implications for correlating palaeoceanographic events from high to low latitudes, Geological Society Special Publication, 2013.
Frieling, J., Iakovleva, A. I., Reichart, G. J., Aleksandrova, G. N., Gnibidenko, Z. N., Schouten, S. and Sluijs, A.: Paleocene–Eocene warming and biotic response in the epicontinental West Siberian Sea, Geology, 42, 767–770, 2014.
Gradstein, F. M., Kristiansen, I. L., Loemo, L. and Kaminski, M. A.: Cenozoic foraminiferal and dinoflagellate cyst biostrtigraphy of the central North Sea, Micropaleontology, 38(2), 101–137, 1992.
Grothe, A., Sangiorgi, F., Brinkhuis, H., Stoica, M. and Krijgsman, W.: Migration of the dinoflagellate Galeacysta etrusca and its implications for the Messinian Salinity Crisis, Newsletters on Stratigraphy, 51(1), 73–91, doi:10.1127/nos/2016/0340, 2017.
Guasti, E., Speijer, R. P., Brinkhuis, H., Smit, J. and Steurbaut, E.: Paleoenvironmental change at the Danian-Selandian transition in Tunisia: Foraminifera, organic-walled dinoflagellate cyst and calcareous nannofossil records, Marine Micropaleontology, 59, 210–229, 2005.
Habib, D. and Drugg, W. S.: Dinoflagellate age of Middle Jurassic–Early Cretaceous sediments in the Blake-Bahama Basin, Deep Sea Drilling Project, vol.76, edited by F. M. Gradstein, R. E. Sheridan, and et al., U.S. Govt. Printing Office, Washington., 1983.
Habib, D. and Drugg, W. S.: Palynology of Sites 603 and 605, Leg 93, Deep Sea Drilling Project., In: van Hinte, J.E. et al., Deep Sea Drilling Project, Washington, Initial Reports, v.92, 751–775, 1987.
Harding, I. C., Smith, G. A., Riding, J. B. and Wimbledon, W. A. P.: Inter-regional correlation of Jurassic/Cretaceous boundary strata based on the Tithonian-Valanginian dinoflagellate cyst biostratigraphy of the Volga Basin, western Russia, Review of palaeobotany and palynology, 167(1), 82–116, doi:https://doi.org/10.1016/j.revpalbo.2011.07.002, 2011.
Harland, R.: Dinoflagellate biostratigraphy of Neogene and Quaternary sediments at holes 400/400A in the Bay of Biscay (DSDP Leg 48), Initial Reports of the DSDP volume 48, 1979.
Harland, R.: Dinoflagellate cysts of the Quaternary system, in: A stratigraphix index of dinoflagellate cysts, edited by A. J. Powell., British Micropaleontological Society Publications series, London, UK, 253–273, 1992.
Head, M. J.: Pollen and dinoflagellates from the Red Crag at Walton-on-the-Naze, Essex: Evidence for a mild climatic phase during the early Late Pliocene of eastern England, Geological Magazine, 135(6), 803–817, 1998.
Head, M. J. and Norris, G.: Palynology and dinocyst stratigraphy of the Eocene and Oligocene in ODP Leg 105, Hole 647A, Labrador Sea, edited by S. P. Srivastava, M. Arthur, and B. Clement, Proceedings of the ODP, Scientific Results, Leg 105, College Station, Texas., 1989.
Head, M. J. and Norris, G.: New species of dinoflagellate cysts and other palynomorphs from the latest Miocene and Pliocene of DSDP Hole 603C, Western North Atlantic, Journal of Palaeontology, 77, 1–15, 2003.
Head, M.J., Norris, G. and Mudie, P.J.: 25. Palynology and dinocyst stratigraphy of the Upper Miocene and lowermost Pliocene, ODP Leg 105, Site 646, Labrador Sea. In: Srivastava, S.P. et al., Ocean Drilling Program, Proceedings, Scientific Results, Leg 105, College Station, Texas, p.423–451, pl.1–7, 1989.
Heilmann-Clausen, C.: Dinoflagellate stratigraphy of the uppermost Danian to Ypresien in the Viborg I borehole, central Jylland, Denmark, Danmarks Geologische untersogelse A, 7, 1–69, 1985.
Heilmann-Clausen, C.: Lower Cretaceous dinoflagellate biostratigraphy in the Danish Central Trough, Danmarks Geologische untersogelse A, 17, 1-1–89, 1987.
Heilmann-Clausen, C. and Van Simaeys, S.: Dinoflagellate cysts from the Middle Eocene to ?lowermost Oligocene succession in the Kysing research borehole, central Danish basin, Palynology, 29(1), 143–204, doi:10.1080/01916122.2005.9989606, 2005.
Helby, R. and McMinn, A.: A preliminary report of Early Cretaceous dinocyst floras from Site 765, Argo Abyssal Plain, northwest Australia., edited by F. M. Gradstein et al., Proc. ODP, Sci. Results, 123, 407–420, College Station, TX., 1992.
Helby, R., Morgan, R. and Partridge, A. D.: A palynological zonation of the Australian Mesozoic, in: Studies in Australian Mesozoic Palynology, edited by P. A. Jell., Mem. Assoc. Australas. Palaeontol., 1987.
Hoek, R. P., Eshet, Y. and Almogi-Labin, A.: Dinoflagellate cyst zonation of Campanian-Maastrichtian sequences in Israel, Micropaleontology, 42, 125–150, 1996.
Hollis, C. J., Crouch, E. M., Morgans, H. E. G., Handley, L., Baker, J. A., Creech, J., Collins, K. S., Gibbs, S. J., Huber, M., Schouten, S., Zachos, J. C. and Pancost, R. D.: Tropical sea temperatures in the high latitude South Pacific during the Eocene, Geology, 37(2), 99–102, 2009.
Houben, A. J. P., Bijl, P. K., Guerstein, G. R., Sluijs, A. and Brinkhuis, H.: Malvinia escutiana, a new biostratigraphically important Oligocene dinoflagellate cyst from the Southern Ocean, Review of palaeobotany and palynology, 165(3–4), 175, 2011.
Houben, A. J. P., Quaijtaal, W., Wade, B. S., Schouten, S. and Brinkhuis, H.: Quantitative organic-walled dinoflagellate cyst stratigraphy across the eocene-oligocene transition in the Gulf of Mexico: A record of climateand sea level change during the onset of antarctic glaciation, Newsletters on Stratigraphy, 52(2), 131–154, doi:10.1127/nos/2018/0455, 2019.
Iakovleva, A. I. and Heilmann-Clausen, C.: Eocene dinoflagellate cyst biostratigraphy of research borehole 011-BP, Omsk region, southwestern Siberia, Palynology, 34(2), 195–232, 2010.
Ioannides, N. S., Colin, J.-P. and Jan du Chêne, R.: A preliminary investigation of Kimmeridgian dinoflagellates and ostracodes from Quercy, southwest France, Bull. Centres rech. Explor.-Prod. Elf-Aquitaine, 12(1), 471–491, 1988.
King, C., Iakovleva, A., Heilmann-Clausen, C. and Steurbaut, E.: Ypresian (early Eocene) stratigraphy of the Suvlu-Kaya reference section in the Bakhchisaray area (Crimea). 51(2), Newsletters on Stratigraphy, 51(2), 167–208, doi:10.1127/nos/2017/0384, 2018.
Kirsch, K. H.: Dinoflagellaten-Zysten aus der Oberkreide des Helvetikums und Nordultrahelvetikums von Oberbayern, Muenchner Geowiss.Abh., Reihe A, Geol.Palaeontol., 22, 1–306, 1991.
Köthe, A.: A revised cenozoic dinoflagellate cyst and calcareous nannoplankton zonation for the german sector of the southeastern north sea basin, Newsletters on Stratigraphy, 45(3), 189–220, doi:10.1127/0078-0421/2012/0021, 2012.
Köthe, A., Khan, A. M. and Ahsraf, M.: Biostratigraphy of the Surghar Range, Salt Range, Sulaiman Range and the Kohat area, Pakistan, according to Jurassic through Paleogene calcareous nannofossils and Paleogene dinoflagellates., Geol. Jb., Reihe B, 71, 3–87, 1988.
Krijgsman, W., Hilgen, F. J., Langereis, C. G., Santarelli, A. and Zachariasse, W. J.: Late Miocene magnetostratigraphy, biostratigraphy and cyclostratigraphy in the Mediterranean, Earth and Planetary Science Letters, 136(3–4), 475–494, doi:10.1016/0012-821X(95)00206-R, 1995.
Kuhlmann, G., Langereis, C. G., Munsterman, D., Leeuwen, R.-J. van, Verreussel, R., Meulenkamp, J. E. and Wong, T. E.: Integrated chronostratigraphy of the Pliocene-Pleistocene interval and its relation to the regional stratigraphical stages in the southern North Sea region, Geologie en Mijnbouw, 85(1), 20–45, 2006.
Lebedeva, N. K., Aleksandrova, G. N., Shurygin, B. N., Ovechkina, M. N. and Gnibidenkoa, Z. N.: Paleontological and Magnetostratigraphic Data on Upper Cretaceous Deposits from Borehole no. 8 (Russkaya Polyana District, Southwestern Siberia), Stratigraphy and Geological Correlation, 21(1), 48–78, 2013.
Leereveld, H.: Dinoflagellate cysts from the Lower Cretaceous Rio Argos succession (southeast Spain), Utrecht University, Laboratory of Palaeobotany and Palynology, Contributions series no 2, Utrecht., 1995.
Leereveld, H.: Upper Tithonian-Valanginian (Upper Jurassic-Lower Cretaceous) dinoflagellate cyst stratigraphy of the western Mediterranean, Cretaceous Research, 18(3), 385–420, 1997a.
Leereveld, H.: Hauterivian-Barremian (Lower Cretaceous) dinoflagellate cyst stratigraphy of the western Mediterranean, Cretaceous Research, 18(3), 421–456, 1997b.
Londeix, L. and Jan Du Chene, R.: Burdigalian dinocyst stratigraphy of the stratotypic area (Bordeaux, France), GEOBIOS, 31(3), 283–294, 1998.
Louwye, S., Head, M. J. and De Schepper, S.: Dinoflagellate cyst stratigraphy and Palaeoecology of the Pliocene in Northern Belgium, southern North Sea Basin, Geological Magazine 141, 353–378, 2004.
Louwye, S., Mertens, K. N. and Vercauteren, D.: New dinoflagellate cysts from the Miocene of the Porcupine Basin, offshore southwest Ireland, Palynology, 32, 131–142, 2008.
Mao, S. and Mohr, B. A. R.: Late Cretaceous dinoflagellate cysts (?Santonian-Maestrichtian) from the Southern Indian Ocean (Hole 748C), edited by S. W. Wise and R. Schlich, Proceedings of the Ocean Drilling Program, Scientific results volume 120, College Station, TX, USA., 1992.
Marret, F., Bradley, L., de Vernal, A., Hardy, W., Kim, S.-Y., Mudie, P., Penaud, A., Pospelova, V., Price, A. M., Radi, T. and Rochon, A.: From bi-polar to regional distribution of modern dinoflagellate cysts, an overview of their biogeography, Marine Micropaleontology, 159, doi:10.1016/j.marmicro.2019.101753, 2020.
Masure, E.:  Berriasian to Aptian dinoflagellate cysts from the Galicia margin, offshore Spain, Sites 638 and 639, Leg 103, edited by G. Boillot, E. L. Winterer, and et al., Proceedings of the Ocean Drilling Program, Scientific Results, Volume 103, College Station, Texas,., 1988.
Masure, E., Rauscher, R., Dejax, J., Schuler, M. and Ferre, B.: Cretaceous-Paleocene palynology from the Cote D’ivoire-Ghana Transform Margin, sites 959, 960, 961, and 962, Proc.Ocean Drill.Program Sci.Res., volume 159, 253–276, 1998.
Matsuoka, K., Bujak, J. P. and Shimazaki, T.: Late Cenozoic dinoflagellate cyst biostratigraphy from the west coast of northern Japan, Micropaleontology, 33, 214–229, 1987.
Matthiessen, J. and Brenner, W.: Dinoflagellate cyst ecostratigraphy of Pliocene-Pleistocene sediments from the Yermak Plateau (Arctic Ocean, Hole 911A), Proceedings of the Ocean Drilling Program, Scientific Results, vol 151, College Station, Texas, USA., 1996.
McLachlan, S. M. S., Pospelova, V. and Hebda, R. J.: Dinoflagellate cysts from the upper Campanian (Upper Cretaceous) of Hornby Island, British Columbia, Canada, with implications for Nanaimo Group biostratigraphy and paleoenvironmental reconstructions, Marine Micropaleontology, 145, 1–20, doi:10.1016/j.marmicro.2018.10.002, 2018.
McMinn, A.: Neogene dinoflagellate distribution in the eastern Indian Ocean from Leg 123, Site 765 doi:10.2973/odp.proc.sr.123.120.1992, edited by F. M. Gradstein, J. N. Ludden, et al Proc. ODP, Sci. Results, volume 123, College Station, TX., 1992.
McMinn, A.: Neogene dinoflagellate cyst biostratigraphy from sites 815 and 823, Leg 133, northeastern Australian margin, edited by J. A. McKenzie, P. J. Davies, and A. Palmer-Julson, Proceedings of the Ocean Drilling Program, Scientific Results, volume 133, U.S. Government Printing Office, College Station, Texas., 1993.
Mohr, B. A. R. and Mao, S.: Maastrichtian dinocyst floras from Maud Rise and Georgia Basin (Southern Ocean): Their Stratigraphic and Palaeoenvironmental implications, Palynology, 21, 41-41–65, 1997.
Montanari, A., Bice, D. M., Capo, R., Coccioni, R., Deino, A., DePaolo, D. J., Emmanuel, L., Monechi, S., Renard, M. and Zevenboom, D.: Integrated stratigraphy of the Chattian to mid-Burdigalian pelagic sequence of the Contessa Valley (Gubbio, Italy), edited by G. S. O. and R. C. A. Montanari, Miocene Stratigraphy: an Integrated Approach,  Elsevier, Amsterdam, the Netherlands., 1997.
Monteil, E.: Kystes de dinoflagellés index (Tithonique-Valanginien) du sud-est de la France: proposition d’une nouvelle zonation palynologique, Rev. Paleobiol., 11, 299, 1992.
Monteil, E.: Dinoflagellate cyst biozonation of the Tithonian and Berriasian of south-east France. Correlation with the sequence stratigraphy, Bull. Centres Rech. Explor.-Prod. Elf Aquitaine, 17(1), 249–273, 1993.
Mudge, D. C. and Bujak, J. P.: An integrated stratigraphy for the Paleocene and Eocene of the North Sea., Geological Society Special Publication, 101, 1996.
Mudge, D. C. and Bujak, J. P.: Biostratigraphic evidence for evolving palaeoenvironments inthe Lower Paleogene of the Faeroe-Shetland Basin, Marine and Petroleum Geology, 18(5), 577–590, doi:10.1016/S0264-8172(00)00074-X, 2001.
Mudie, P. J.: Palynology and dinoflagellate biostratigraphy of DSDP Leg 94, Sites 607 and 611, North Atlantic Ocean, Initial Reports of the DSDP vol.94, Washington, USA., 1987.
Nikitenko, B., Pestchevitskaya, E. B., Lebedeva, N. K. and Ilyina, V. I.: Micropalaeontological and palynological analyses across the Jurassic-Cretaceous boundary on Nordvik Peninsula, Northeast Siberia, Newsletters on Stratigraphy, 42(3), 181–222, 2008.
Oosting, A. M., Leereveld, H., Dickens, G. R., Henderson, R. A. and Brinkhuis, H.: Correlation of Barremian-Aptian (mid-Cretaceous) dinoflagellate cyst assemblages between the Tethyan and Austral realms, Cretaceous Research, 27(6), 792–813, doi:10.1016/j.cretres.2006.03.012, 2006.
Pearce, M.A.: New organic-walled dinoflagellate cysts from the Cenomanian to Maastrichtian of the Trunch borehole, UK.Marine Micropalaeontology, v.29, p.51–72, pl.1–8, 2010
Poulsen, N. E.: Jurassic dinoflagellate cyst biostratigraphy of the Danish Subbasin in relation to sequences in England and Poland; a preliminary review, Review of Palaeobotany and Palynology, 75(1), 1–32, 1992.
Poulsen, N. E.: Upper Bajocian to Callovian (Jurassic) dinoflagellate cysts from central Poland, Acta Geologica Polonica, 48(3), 237–245, 1998.
Powell, A. J.: Latest Palaeogene and Earliest Neogene dinoflagellate cysts from the Lemme section, NW Italy, AASP contributions series, 17, 83-83–104, 1986.
Powell, A. J.: A modified dinoflagellate cyst biozonation for latest Palaeocene and earliest Eocene sediments from the central North Sea, Review of palaeobotany and palynology, 56(3–4), 327–344, doi:10.1016/0034-6667(88)90064-4, 1988.
Powell, A. J.: Dinoflagellate cysts of the Tertiary System, in: A stratigraphix index of dinoflagellate cysts, edited by A. J. Powell., British Micropaleontological Society Publications series, London, UK, 1992.
Powell, A. J., Brinkhuis, H. and Bujak, J. P.: Upper Paleocene-lower Eocene dinoflagellate cyst sequence biostratigraphy of southeast England, edited by R. W. O. Knox, R. M. Corfield, and R. E. Dunay, Geol. Soc. Spec. Publ., 1996.
Prince, I. M., Jarvis, I., Pearce, M. A. and Tocher, B. A.: Dinoflagellate cyst biostratigraphy of the Coniacian-Santonian (Upper Cretaceous): New data from the English Chalk, Review of Palaeobotany and Palynology, 150(1–4), 59–96, doi:10.1016/j.revpalbo.2008.01.005, 2008.
Pross, J., Houben, A. J. P., Simaeys, S. van, Williams, G. L., Kotthoff, U., Coccioni, R., Wilpshaar, M. and Brinkhuis, H.: Umbria-Marche revisited: A refined magnetostratigraphic calibration of dinoflagellate cyst events for the Oligocene of the Western Tethys, Review of palaeobotany and palynology, 158, 213–235, 2010.
Quaijtaal, W. and Brinkhuis, H.: Pentadinium alabamensis: A new, unusual dinoflagellate from the early Oligocene of the Gulf Coast, Alabama, USA, Review of Palaeobotany and Palynology, 175, 47–54, doi:10.1016/j.revpalbo.2012.03.002, 2012.
Quaijtaal, W., Donders, T. H., Persico, D. and Louwye, S.: Characterising the middle Miocene Mi-events in the Eastern North Atlantic realm: A first high-resolution marine palynological record from the Porcupine Basin, Palaeogeography, Palaeoclimatology, Palaeoecology, 399, 140–159, 2014.
Radmacher, W., Pérez-Rodríguez, I., Arz, J. A. and Pearce, M. A.: Dinoflagellate biostratigraphy at the Campanian-Maastrichtian boundary in Zumaia, northern Spain, Cretaceous Research, 51, 309–320, doi:10.1016/j.cretres.2014.07.004, 2014a.
Radmacher, W., Tyszka, J., Mangerud, G. and Pearce, M. A.: Dinoflagellate cyst biostratigraphy of the Upper Albian to Lower Maastrichtian in the southwestern Barents Sea., Marine and Petroleum Geology, 57, 109–121, 2014b.
Radmacher, W., Mangerud, G. and Tyszka, J.: Dinoflagellate cyst biostratigraphy of Upper Cretaceous strata from two wells in the Norwegian Sea, Review of Palaeobotany and Palynology, 216, 18–32, 2015.
Riding, J. B. and Helby, R.: Early Jurassic (Toarcian) dinoflagellate cysts from the Timor Sea, Australia, Studies in Australian Mesozoic palynology II; Memoir of the Association of Australasian Palaeontologists 24, edited by J. R. Laurie and C. B. Foster., 1–32, 2001a.
Riding, J. B. and Helby, R.: A selective reappraisal of Wanaea Cookson & Eisenack 1958 (Dinophyceae), Studies in Australian Mesozoic palynology II; Memoir of the Association of Australasian Palaeontologists 24, edited by J. R. Laurie and C. B. Foster., 33–58, 2001b.
Riding, J. B. and Helby, R.: Phallocysta granosa sp. nov., a Mid Jurassic (Bathonian) dinoflagellate cyst from the Timor Sea, Australia., Studies in Australian Mesozoic palynology II; Memoir of the Association of Australasian Palaeontologists 24, edited by J. R. Laurie and C. B. Foster., 59–63, 2001c.
Riding, J. B. and Helby, R.: Microplankton from the Mid Jurassic (late Callovian) Rigaudella aemula Zone in the Timor Sea, north-western Australia., Studies in Australian Mesozoic palynology II; Memoir of the Association of Australasian Palaeontologists 24, edited by J. R. Laurie and C. B. Foster., 65–109, 2001d.
Riding, J. B. and Helby, R.: Dinoflagellate cysts from the Late Jurassic (Oxfordian) Wanaea spectabilis Zone in the Timor Sea region., Studies in Australian Mesozoic palynology II; Memoir of the Association of Australasian Palaeontologists 24, edited by J. R. Laurie and C. B. Foster., 111–140, 2001e.
Riding, J. B. and Helby, R.: Dinoflagellate cysts from the Late Jurassic (Kimmeridgian) Dingodinium swanense Zone in the North-West Shelf and Timor Sea, Australia., Studies in Australian Mesozoic palynology II; Memoir of the Association of Australasian Palaeontologists 24, edited by J. R. Laurie and C. B. Foster., 141–176, 2001f.
Riding, J. B. and Helby, R.: Marine microplankton from the Late Jurassic (Tithonian) of the north-west Australian region., Studies in Australian Mesozoic palynology II; Memoir of the Association of Australasian Palaeontologists 24, edited by J. R. Laurie and C. B. Foster., 177–220, 2001g.
Riding, J. B. and Thomas, J. E.: Dinoflagellate cyst stratigraphy of the Kimmeridge Clay (Upper Jurassic) from the Dorset Coast, Southern England, Palynology, 12, 65–88, 1988.
Riding, J.B. and Thomas, J.E.: Dinoflagellate cysts of the Jurassic System, in: A stratigraphix index of dinoflagellate cysts, edited by A. J. Powell., British Micropaleontological Society Publications series, London, UK, 7–98, 1992.
Riding, J. B. and Thomas, J. E.: Marine palynomorphs from the Staffin Bay and Staffin Shale formations (Middle-Upper Jurassic) of the Trotternish Peninsula, NW Skye., Scottish Journal of Geology, 33(1), 59–74, 1997.
Riding, J. B., Mantle, D. J. and Backhouse, J.: A review of the chronostratigraphical ages of Middle Triassic to Late Jurassic dinoflagellate cyst biozones of the North West Shelf of Australia, Review of Palaeobotany and Palynology, 162(4), 543–575, doi:10.1016/j.revpalbo.2010.07.008, 2010.
Riley, L. A. and Fenton, J. P. G.: A dinocyst zonation for the Callovian to iddle Oxfordian succession (Jurassic) of northwest Europe, Palynology, 6, 193–202, 1982.
Schiøler, P.: New species of dinoflagellate cysts from Maastrichtian- Danian chalks of the Danish North Sea, Journal of Micropalaeontology, 12(1), 99–112, 1993.
Schreck, M. and Matthiessen, J.: Batiacasphaera bergenensis and Lavradosphaera elongata – new dinoflagellate cyst and acritarch species from the Miocene of the Iceland Sea (ODP Hole 907A), Review of Palaeobotany and Palynology, 211, 97–106, 2014.
Schreck, M., Matthiessen, J. and Head, M. J.: A magnetostratigraphic calibration of Middle Miocene through Pliocene dinoflagellate cyst and acritarch events in the Iceland Sea (Ocean Drilling Program Hole 907A), ,Review of Palaeobotany and Palynology 187, 66–94, doi:10.1016/j.revpalbo.2012.08.006, 2012.
Schreck, M., Meheust, M., Stein, R. and Matthiessen, J.: Response of marine palynomorphs to Neogene climate cooling in the Iceland Sea (ODP Hole 907A), Marine Micropaleontology, 101, 49–67, doi:10.1016/j.marmicro.2013.03.003, 2013.
Schreck, M., Nam, C., S. I., Clotten, Fahl, K., De Schepper, S., Forwick, M. and Matthiessen, J.: Neogene dinoflagellate cysts and acritarchs from the high northern latitudes and their relation to sea surface temperature, Marine Micropaleontology, 136, 51–65, doi:10.1016/j.marmicro.2017.09.003, 2017.
Shulgina, N. I., Burdykina, M. D., Basov, V. A. and Århus, N.: Distribution of ammonites, foraminifera and dinoflagellate cysts in the lower Cretaceous reference sections of the Khatanga Basin, and Boreal Valanginian biogeography, Cretaceous Research, 15, 1–16, 1994.
Skupien, P.: Albian non-calcareous dinoflagellates of the western Carpathians, Slovak Geological magazine, 10(3), 203–214, 2004.
Skupien, P. and Vasícek, Z.: Lower Cretaceous ammonite and dinocyst biostratigraphy and paleoenvironment of the Silesian Basin (outher western Carpathians), Geologica Carpathica, 53(3), 179–189, 2002.
Slimani, H. and Louwye, S.: New dinoflagellate cyst species of the Microdinium and Phanerodinium Complexes (Evitt) from the Upper Cretaceous-Lower Paleogene Chalk Group in the Meer borehole, northern Belgium, Review of palaeobotany and palynology, 168(1), 41–50, 2011.
Sliwinska, K. K., Abrahamsen, N., Beyer, C., Brünings-Hansen, T., Thomsen, E., Ulleberg, K. and Heilmann-Clausen, C.: Bio- and magnetostratigraphy of Rupelian-mid Chattian deposits from the Danish land area, Review of palaeobotany and palynology, 172, 48–69, 2012.
Sluijs, A., Brinkhuis, H., Stickley, C. E., Warnaar, J., Williams, G. L. and Fuller, M.: Dinoflagellate cysts from the Eocene - Oligocene transition in the Southern Ocean: Results from ODP Leg 189, edited by N. Exon and J. P. Kennett, Proceedings of the ODP, Scientific Results, Leg 189, U.S. Government Printing Office, College Station, Texas., 2003.
Smelror, M.: Late Bathonian to Early Oxfordian dinoflagellate cyst stratigraphy of Jameson Land and Milne Land, East Greenand, Rapp. Grønlands geol. Unders., 137, 135–159, 1988a.
Smelror, M.: Bathonian to early Oxfordian dinoflagellate cysts and acritarchs from Kong Karls Land, Svalbard, Review of palaeobotany and palynology, 56(3–4), 275–303, doi:10.1016/0034-6667(88)90061-9, 1988b.
Smelror, M.: Jurassic stratigraphy of the western Barents Sea region: a review., GEOBIOS, 17, 441–451, 1994.
Smelror, M. and Dietl, G.: Dinoflagellates cysts of the Bathonian/Callovian boundary beds in Southern Germany, GEOBIOS, 17, 453–459, 1994.
Smelror, M. and Lominadze, T. A.: Callovian dinoflagellate cysts from the Caucasus, U.S.S.R., N. Jb. Geol. Palõont., Abh., 178(2), 147–166, 1989.
Smelror, M., Århus, N., Meléndez, G. and Lardies, M. Q.: A reconnaissance study of Bathonian to Oxfordian (Jurassic) dinoflagellates and acritarchs from the Zaragoza region (NE Spain) and Figueira da Foz (Portugal), Rev. Esp. Micropaleont., 23(2), 47–82, 1991.
Soliman, A., Coric, S., Head, M. J., Piller, W. E. and El Beialy, S. Y.: Lower and Middle Miocene biostratigraphy, Gulf of Suez, Egypt based on dinoflagellate cysts and calcareous nannofossils, Palynology, 36(1), 38–79, 2012.
Steeman, T., De Weirdt, J., Smith, T., De Putter, T., Mees, F. and and Louwye, S.: Dinoflagellate cyst biostratigraphy and palaeoecology of the early Paleogene Landana reference section, Cabinda Province, Angola, Palynology, 44(2), 280–309, doi:10.1080/01916122.2019.1575091, 2020.
Stover, L. E. and Hardenbol, J.: Dinoflagellates and depositional sequences in the Lower Oligocene (Rupelian) Boom Clay Formation, Belgium, Bulletin de la Société belge de géologie, 102(1–2), 5–77, 1994.
Strauss, C. and Lund, J. J.: A Middle Miocene dinoflagellate cyst microflora from Papendorf near Hamburg, Germany, Mitt. Geol.-Palõont. Inst. univ. Hamburg, 157–189, 1992.
Thorn, V. C., Riding, J. B. and Francis, J. E.: The Late Cretaceous dinoflagellate cyst Manumiella: Biostratigraphy, systematics, and palaeoecological signals in Antarctica, Review of palaeobotany and palynology, 156, 436–448, 2009.
Tocher, B. A.: Campanian to Maestrichtian dinoflagellate cysts from the United States Atlantic margin, Deep Sea Drilling Project Site 612., Initial reports DSDP, Leg 95, 419–428, 1987.
Tocher, B. A. and Jarvis, I.: Dinoflagellate cyst distribution and stratigraphy of the Lower- Middle Cenomanian (Upper Cretaceous) at Fumichon, Normandy, northern France, Revue de Micropaleontologie, 37(3), 223–232, 1994.
Tocher, B. A. and Jarvis, I.: Dinocyst distributions and stratigraphy of two Cenomanian-Turonian boundary (Upper Cretaceous) sections from the western Anglo-Paris Basin, Journal of Micropaleontology, 14(2), 97–105, doi:10.1144/jm.14.2.97, 1995.
Tocher, B. A. and Jarvis, I.: Dinoflagellate cyst distributions and the Albian-Cenomanian boundary (mid-Cretaceous) at Cordebugle, NW France and Lewes, southern England, Journal of Micropaleontology, 15(1), 55–67, doi:10.1144/jm.15.1.55, 1996.
Torricelli, S.: Lower Cretaceous dinoflagellate cyst and acritarch stratigraphy of the Cismon APTICORE (southern Alps, Italy), Review of palaeobotany and palynology, 108(3–4), 213–266, doi:10.1016/S0034-6667(99)00041-X, 2000.
Torricelli, S.: Dinoflagellate cyst stratigraphy of the Scisti a Fucoidi Formation (Early Cretaceous) from Piobbico, Central Italy: calibrated events for the Albian of the Tethyan Realm., Revista Italiana di Paleontologia e Stratigrafia, 112(1), 95–112, 2006.
Torricelli, S. and Rosa Amore, M.: Dinoflagellate cysts and calcareous nannofossils from the upper cretaceous Saraceno formation (Calabria, Italy): Implications about the history of the Liguride Complex, Rivista Italiana di Paleontologia e Stratigrafia, 109(3), 499–516, 2003.
Torricelli, S., Knezaurek, G. and Biffi, U.: Sequence biostratigraphy and paleoenvironmental reconstruction in the Early Eocene Figols Group of the Trenp-Graus Basin (South-Central Pyrenees, Spain), Palaeogeography, Palaeoclimatology, Palaeoecology, 232(1), 2006.
Türkecan, A. T., Munsterman, D., Işik, U., Altiner, D., Pinar, M., Çevik, T. and Alay, Z.: Dinoflagellate cyst biostratigraphy of Miocene strata in the Adana Basin, Eastern Mediterranean, Turkey, Palynology, 42(4), 516–539, doi:10.1080/01916122.2017.1403389, 2018.
Van De Schootbrugge, B., Houben, A. J. P., Ercan, F. E. Z., Verreussel, R., Kerstholt, S., Janssen, N. M. M., Nikitenko, B. and Suan, G.: Enhanced Arctic-Tethys connectivity ended the Toarcian Oceanic Anoxic Event in NW Europe., Geological Magazine, 157(10), 1593–1611, doi:10.1017/S0016756819001262, 2019a.
Van De Schootbrugge, B., Richoz, S., Pross, J., Luppold, F. W., Hunze, S., Wonik, T., Blau, J., Meister, C., van der Weijst, C. M. H., Suan, G., Fraguas, A., Fiebig, J., Herrle, J. O., Guex, J., Little, C. T. S., Wignall, P. B., Püttmann, W. and Oschmann, W.: The Schandelah Scientific Drilling Project: A 25-million year record of Early Jurassic palaeo-environmental change from northern Germany, Newsletters on Stratigraphy, 52(3), 249–296, 2019b.
Van Mourik, C. A. and Brinkhuis, H.: The Massignano Eocene–Oligocene golden spike section revisited, Stratigraphy, 2, 13–30, 2005.
Van Mourik, C. A., Brinkhuis, H. and Williams, G. L.: Mid-to late Eocene organic-walled dinoflagellate cysts from ODP Leg 171B, offshore Florida., Geol. Soc. Spec. Publ., 183, 225, 2001.
Van Simaeys, S., de Man, E., Vandenberghe, N., Brinkhuis, H. and Steurbaut, E.: Stratigraphic and palaeoenvironmental analysis of the Rupelian-Chattian transition in the type region: evidence from dinoflagellate cysts, foraminifera and calcareous nannofossils, Palaeogeography, Palaeoclimatology, Palaeoecology, 208, 31–58, 2004.
Van Simaeys, S., Munsterman, D. and Brinkhuis, H.: Oligocene dinoflagellate cyst biostratigraphy of the southern North Sea Basin, Review of Palaeobotany and Palynology, 134(1–2), 105–128, doi:10.1016/j.revpalbo.2004.12.003, 2005.
Vellekoop, J., Smit, J., van de Schootbrugge, B., Weijers, J. W. H., Galeotti, S., Sinninghe Damsté, J. S. and Brinkhuis, H.: Palynological evidence for prolonged cooling along the Tunisian continental shelf following the K-Pg boundary impact., Palaeogeography, Palaeoclimatology, Palaeoecology, 426, 216–228, 2015
Versteegh, G. J. M.: The onset of major Northern Hemisphere glaciations and their impact on dinoflagellate cysts an acritarchs from the Singa section, Calabria (southern Italy) and DSDP Holes 607/607A (North Atlantic), Marine Micropaleontology, 30(4), 319–343, 1997.
Versteegh, G. J. M., Zevenboom, D.: New genera and species of dinoflagellate cysts from the Mediterranean Neogene, Review of Palaeobotany and Palynology 85, 213–229, 1995.
Vieira, M., Casas-Gallego, M., Mahdi, S. and Fenton, J.: Impagidinium obscurum sp. nov., a marker dinoflagellate cyst for the Thanetian (Paleocene) of the North Sea and the Barents Sea., Palynology, 44(2), 382–390, doi:10.1080/01916122.2019.1630494, 2020.
Williams, G. L. and Bujak, J. P.: Distribution patterns of some North Atlantic Cenozoic dinoflagellate cysts., Marine Micropaleontology, 2, 223–234, 1977.
Williams, G. L., Stover, L. E. and Kidson, E. J.: Morphology and stratigraphic ranges of selected Mesozoic–Cenozoic dinoflagellate taxa in the Northern Hemisphere, Pap. Geol. Surv. Can., 92(10), 1993.
Willumsen, P. S.: Three new species of dinoflagellate cyst from Cretaceous-Paleogene (K-Pg) boundary sections at mid-Waipara River and Fairfield Quarry, South Island, New Zealand, Palynology, 36(SUPPL. 1), 48–62, doi:10.1080/01916122.2011.642260, 2012.
Wilpshaar, M., Santarelli, A., Brinkhuis, H. and Visscher, H.: Dinoflagellate cysts and mid-Oligocene chronostratigraphy in the central Mediterranean region, Journal of the Geological Society of London, 153, 553–561, 1996.
Woollam, R. and Riding, J. B.: Dinoflagellate cyst zonation of the English Jurassic, Report of the Institute of Geological sciences, 1-1–42, 1983.
Wrenn, J. H. and Kokinos, J. P.: Preliminary comments on Miocene through Pleistocene dinoflagellate cysts from De Soto Canyon, Gulf of Mexico, American Association of Stratigraphic Palynologists, Contributions Series,, 17, 169–225, 1986.
Zegarra, M. and Helenes, J.: Changes in Miocene through Pleistocene dinoflagellates from the Eastern Equatorial Pacific (ODP Site 1039), in relation to primary productivity, Marine Micropaleontology, 81(3–4), 107–121, doi:10.1016/j.marmicro.2011.09.005, 2011.
Zevenboom, D.: Dinoflagellate cysts from the Mediterranean late Oligocene and Miocene, PhD thesis, Utrecht University, Utrecht, the Netherlands., 1995.

For Paleolatitude.csv:
Van Hinsbergen, D. J. J., Torsvik, T. H., Schmid, S. M., Maţenco, L. C., Maffione, M., Vissers, R. L. M., Gürer, D. and Spakman, W.: Orogenic architecture of the Mediterranean region and kinematic reconstruction of its tectonic evolution since the Triassic, Gondwana Research, 81, 79–229, doi:10.1016/j.gr.2019.07.009, 2020
Van Hinsbergen, D. J. J., De Groot, L. V., Van Schaik, S. J., Spakman, W., Bijl, P. K., Sluijs, A., Langereis, C. G. and Brinkhuis, H.: A paleolatitude calculator for paleoclimate studies, PLOS One, 10(6), 2015.
Advokaat, E. L., Marshall, N. T., Li, S., Spakman, W., Krijgsman, W. and van Hinsbergen, D. J. J.: Cenozoic Rotation History of Borneo and Sundaland, SE Asia Revealed by Paleomagnetism, Seismic Tomography, and Kinematic Reconstruction, Tectonics, 37(8), 2486–2512, doi:10.1029/2018TC005010, 2018.




