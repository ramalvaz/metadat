# Journal article describing systematic review and meta-analysis:
# Rivera, H.D., Rodríguez, C. I., Álvarez-Vaz, R., Kreiner,M.
# E. G., & Morris, K. M. (2021a). Comparison of two diagnostic tests for the detection of temporomandibular disorders. A systematic review and meta-analysis. Odontoestomatología, 1–17.
# https://doi.org/10.22592/ode2025n45e338

# Dataset and R Code References:
# Rivera, Hugo Daniel; Álvarez-Vaz, Ramón, 2025, "Conjunto de datos de: Comparación de dos #pruebas diagnósticas para la detección de trastornos témporomandibulares. Una revisión #sistemática y metaanálisis.", https://doi.org/10.60895/redata/YIEGLZ, Repositorio de datos #abiertos de investigación de Uruguay, V1

#Álvarez-Vaz, R., & Rivera, H. (2025, agosto 29). Aspectos a considerar en un metaanálisis en #pruebas diagnósticas para medir la detección de trastornos temporomandibulares. XVIII Semana #Internacional de la Estadı́stica y la Probabilidad, (SIEP 2025), Puebla, México. Zenodo. #https://doi.org/10.5281/zenodo.17196152 doi: 10.5281/zenodo.17196152

dat.rivera2023<- read.csv("data-raw/dat.rivera2023.csv", header = TRUE,sep = ";",dec=",")

# remove superfluous whitespace
dat.rivera2023$Author    <- trimws(dat.rivera2023$Author)
dat.rivera2023$Title     <- trimws(dat.rivera2023$Title)

str(dat.rivera2023)
names(dat.rivera2023)
save(dat.rivera2023, file = "data/dat.rivera2023.rda", ascii = FALSE)
