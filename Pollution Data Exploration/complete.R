complete <- function(directory, id = 1:332) {
  nobs <- function(id) {
    path <- file.path(paste(directory, "/", formatC(id, width = 3, flag = "0"), 
                    ".csv", sep = ""))
    return(nrow(na.omit((read.csv(path)))))
  }
  return(data.frame(id = id, nobs = sapply(id, nobs)))
}