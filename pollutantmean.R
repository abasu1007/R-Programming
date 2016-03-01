pollutantmean <- function(directory, pollutant, id = 1:332){
	## 'directory' is a character vector of length 1 indicating
	## the location of the CSV files
	## 'pollutant' is a character vector of length 1 indicating
	## the name of the pollutant for which we will calculate the
	## the mean; either 'sulfate' or 'nitrate'.
	## 'id' is an integer vector indicating the monitor ID numbers
	## to be used
	## Return the mean of the pollutant across all monitors list
	## in the 'id' vector (ignoring NA values)
	## NOTE: Do not round the result
	
	library(stringr) ##calling a stringr library that contains str_pad 
				##function for adding leading zeros to argument id
	id <- str_pad(id, 3, pad = "0")
	file_list <- paste(directory, "/", id, ".csv", sep="")
	
	for (file in file_list){		
		if (!exists("all_data")){
    			all_data <- read.csv(file, header = TRUE)
  		}
   
  		# if the merged dataset does exist, append to it
  		else if (exists("all_data")){
    			temp_df <- read.csv(file, header = TRUE)
    			all_data <- rbind(all_data, temp_df)
    			rm(temp_df)
  		}
	}
	
	print (mean(all_data[[pollutant]], na.rm = TRUE))
		
}		
