# r-jpd16
# install the package with install.packages("rvest")
library(rvest)

# Find your list here: https://en.wikipedia.org/wiki/List_of_lists_of_lists
url <- "https://en.wikipedia.org/wiki/List_of_most_popular_websites"

# RVest Loop
websites <- url %>%
    html() %>%
    # If there is more than one table change the number in brackets ([1]).
    html_nodes(xpath='//*[@id="mw-content-text"]/table[1]') %>%
    html_table()

# Assign the data
websites <- websites[[1]]

# Write a CSV
write.csv(websites, file ="data.csv", row.names=FALSE)
