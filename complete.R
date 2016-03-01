complete <- function(directory, id = 1:332){
	## 'directory' is a character vector of length 1 indicating
	## the location of the CSV files
	
	## 'id' is an integer vector indicating the monitor ID numbers
	## to be used
	
	## Return a data frame of the form:
	## id nobs
	## 1  117
	## 2  1041
	## ...
	## where id is the monitor ID number and nobs is the
	## number of complete cases
	
	
	library(stringr) ##calling a stringr library that contains str_pad 
				##function for adding leading zeros to argument id
	for (id_no in id){
		id_file <- str_pad(id_no, 3, pad = "0")				
		df_file <- read.csv(paste(directory, "/", id_file, ".csv", sep=""), header = TRUE)
		complete_case_vector <- complete.cases(df_file)
		no_of_data <- sum(complete_case_vector)
		new_row <- c(id_no, no_of_data)
		data <- rbind(data, new_row)
	}
	colnames(data) <- c("id", "nobs")
	print(data)		
}
