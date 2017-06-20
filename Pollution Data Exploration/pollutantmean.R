pollutantmean <- function(directory, pollutant, id = 1:332) {
  dataset = numeric()
  for (i in id) {
    new_csv <- read.csv(paste(directory, "/", formatC(i, width = 3, flag = "0"), 
                              ".csv", sep = ""))
    dataset <- rbind(dataset, new_csv[pollutant])
  }
  dataset <- dataset[!is.na(dataset)]
  mean(dataset)
}