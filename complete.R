complete <- function(directory, id = 1:332) {
  	fileslist <- list.files(directory, full.names = TRUE)
	nobs <- c()
	for (i in id) {
		files <- read.csv(fileslist[i])
		complete_cases <- files[complete.cases(files),]
		nobs <- c(nobs, nrow(complete_cases))
	}
	data.frame(cbind(id, nobs))
}
