corr <- function(directory, threshold = 0) {
	fileslist <- list.files(directory, full.names = TRUE)
	correlations <- c()
	for (i in fileslist) {
		dat <- read.csv(i)
		complete_cases <- dat[complete.cases(dat),]
		if (nrow(complete_cases) > threshold) {
			correlations <- c(correlations, cor(complete_cases$sulfate, complete_cases$nitrate))
		}
	}
	return(correlations)
}