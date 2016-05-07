# r-jpd16
# install the package with install.packages("pxR")
library(pxR)

# Población por sexo, Sección censal y edad (grupos quinquenales).
# http://www.ine.es/pcaxisdl/t20/e245/p07/a2015/l0/0001.px
p <- read.px("0001.px", encoding="latin1")
pp <- as.data.frame(p)

# write the csv
write.csv(pp, file = "causas_muerte.csv")