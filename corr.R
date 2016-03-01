corr <- function(directory, threshold = 0){
	## 'directory' is a character vector of length 1 indicating
	## the location of the CSV files
	
	## 'threshold' is a numeric vector of length 1 indicating the
	## number of completely observed observations (on all variables)	
	## required to compute the correlation between nitrate and sulfate
	## the default is 0
	
	
	library(stringr) ##calling a stringr library that contains str_pad 
				##function for adding leading zeros to argument id
	correlation <- vector(mode="numeric", length=0)
	for (id_no in 1:332){
		id_file <- str_pad(id_no, 3, pad = "0")				
		df_file <- read.csv(paste(directory, "/", id_file, ".csv", sep=""), header = TRUE)
		complete_case_vector <- complete.cases(df_file)
		
		if (sum(complete_case_vector)> threshold){
			df_file <- na.omit(df_file)
			correlation <- c(correlation, cor(df_file$nitrate, df_file$sulfate))
  		}
	}
	correlation	
}		
	