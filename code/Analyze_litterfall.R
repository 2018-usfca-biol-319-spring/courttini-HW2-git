# Courtney Lopez
# cnlopez4@usfca.edu
# February 8, 2018 

# A script to visualize NEON data on litterfall

# Read in the data 
litter_data <- read.csv("data/ltr_massdata.csv",
                          header = TRUE)

# Subset out data as TREE from Treehaven

tree_data <- subset(litter_data,
       siteID == "TREE")

# Let's first look at just flower mass data 

tree_flower_data <-subset(tree_data,
                          functionalGroup == "Flowers")

# Make a scatterplot of flower mass by date 

pdf("output/TREE_flower_mass_over_time_scatterplot.pdf")

plot(x = as.POSIXct(tree_flower_data$collectDate),
     y = tree_flower_data$dryMass,
     main = "Dry mass of flowers fallen in Treehaven",
     xlab = "Date",
     ylab = "Dry mass of flowers in grams",
     pch = 2)
dev.off()

# Subset out data as HARV from Harvard Forest

harv_data <- subset(litter_data,
                    siteID == "HARV")

# Let's first look at just flower mass data 

harv_flower_data <-subset(harv_data,
                          functionalGroup == "Flowers")

# Make a scatterplot of flower mass by date for HARV

pdf("output/HARV_flower_mass_over_time_scatterplot.pdf")

plot(x = as.POSIXct(harv_flower_data$collectDate),
     y = harv_flower_data$dryMass,
     main = "Dry mass of flowers fallen in Harvard Forest",
     xlab = "Date",
     ylab = "Dry mass of flowers in grams",
     pch = 2)
dev.off()