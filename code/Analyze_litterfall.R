# A script to visualize NEON data on litterfall
# Courtney Lopez
# February 8, 2018 

# Read in the data 
litter_data <- read.csv("data/ltr_massdata.csv",
                          header = TRUE)

# Subset out data from the Guan Experimental forest 

guan_data <- subset(litter_data,
       siteID == "GUAN")

# Let's first look at just flower mass data 

guan_flower_data <-subset(guan_data,
                          functionalGroup == "Flowers")

# Make a scatterplot of flower mass by date 

plot(x = as.POSIXct(guan_flower_data$collectDate),
     y = guan_flower_data$dryMass)
