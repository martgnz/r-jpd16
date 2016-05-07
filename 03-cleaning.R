# r-jpd16
# install the package with install.packages("plyr")
library(plyr)

## rename the columns to spanish
websites_domain <- rename(websites, c("Domain"="domain", "Principal country"="country"))

## keep only our the domain and the country columns
keeps <- c("domain", "country")
websites_domain <- websites_domain[keeps]
