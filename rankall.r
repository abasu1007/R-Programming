library(dplyr)
library(ggplot2)

hospital_data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")

## Change the class of the columns containing data about 30 day motality rates to numeric
hospital_data[, 11] <- as.numeric(hospital_data[, 11])
hospital_data[, 17] <- as.numeric(hospital_data[, 17])
hospital_data[, 23] <- as.numeric(hospital_data[, 23])

## This function takes as input two arguments - state name, and outcome.
## It checks to see if the outcome is valid.
## The data is reordered as per the rank of a hospital in a particular state
## Rank is determined by the Mortality Rate in a specific category (outcome)
## Any hospital that does not have data, corresponding to the required outcome, is not considered

rankall <- function(outcome, num = "best") {
	## Checking validity of the input outcome
	if (!(outcome == "heart attack" || outcome == "heart failure" || outcome == "pneumonia")) {
		stop ("invalid outcome")
	}
	
	## The Hospitals are ordered as per their Mortality rates, with hospitals in each state ranked separately; 
	## the hospital with least mortality is placed first.
	
	if (outcome == "heart attack"){
		Ordered_list <- hospital_data[order(hospital_data[,7], hospital_data[,11], hospital_data[,2]), ]
		Ordered_list <- Ordered_list[!is.na(Ordered_list$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack),]
		Ordered_list$Rank = ave(Ordered_list$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack, Ordered_list$State, 
                          FUN = function(x) rank(x, ties.method = "first"))	
	}
	
	if (outcome == "heart failure"){
		Ordered_list <- hospital_data[order(hospital_data[,7], hospital_data[,17], hospital_data[,2]), ]
		Ordered_list <- Ordered_list[!is.na(Ordered_list$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure),]
		Ordered_list$Rank = ave(Ordered_list$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure, Ordered_list$State, 
                          FUN = function(x) rank(x, ties.method = "first"))	
	}
	
	if (outcome == "pneumonia"){
		Ordered_list <- hospital_data[order(hospital_data[,7], hospital_data[,23], hospital_data[,2]), ]
		Ordered_list <- Ordered_list[!is.na(Ordered_list$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia),]
		Ordered_list$Rank = ave(Ordered_list$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia, Ordered_list$State, 
                          FUN = function(x) rank(x, ties.method = "first"))		
	}
	
	## A new data rame is created with 2 columns: hospital and state, the hospital column is initially populated with NAs
	State_list <- data.frame(hospital = rep(NA, length(unique(hospital_data$State))))
	
	## The state column is populated with each unique state names
	State_list$state = as.character(unique(hospital_data$State)[order(unique(hospital_data$State))])
	
	for (ind_state in State_list$state) {
		State_hosp_list <- subset(Ordered_list, State == ind_state) ## Hospitals belonging to the particular state
		num_hospitals <- nrow(State_hosp_list)		
		
		if (num == "best") {num_temp <- 1}
		else if (num == "worst") {num_temp <- num_hospitals}
		else {num_temp <- num}
		
		if (length(State_hosp_list$Hospital.Name[State_hosp_list$Rank == num_temp]) == 0) {next} ## if no hospital is found corresponding to a given 
																								## outcome and rank, then the NA value is retained
		State_list$hospital[which(State_list$state == ind_state)] <- State_hosp_list$Hospital.Name[State_hosp_list$Rank == num_temp]
		}
	
	State_list
}