# r-jpd16
# plots
temp <- read.csv("fabra-avg.csv", sep = ",")

## december plot
plot(temp$year, temp$december)
scatter.smooth(x=temp$year, y=temp$december, col="#CCCCCC", span = 0.2)
