library(dplyr)
library(ggplot2)

hospital_data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")

## Change the class of the columns containing data about 30 day motality rates to numeric
hospital_data[, 11] <- as.numeric(hospital_data[, 11])
hospital_data[, 17] <- as.numeric(hospital_data[, 17])
hospital_data[, 23] <- as.numeric(hospital_data[, 23])

## This function takes as input three arguments - state name, outcome, and ranking of an outcome.
## It checks of the name of state and the outcome are both valid.
## It returns the name of the hospital with lowest mortality rate for the given state.

rankhospital <- function(state, outcome, num = "best") {
	State_hospitals <- (subset(hospital_data, State == state))
	
	## Checking validity of the input state
	if (nrow(State_hospitals) == 0) {
		stop ("invalid state")
	}
	
	## Checking validity of the input outcome
	if (!(outcome == "heart attack" || outcome == "heart failure" || outcome == "pneumonia")) {
		stop ("invalid outcome")
	}
	
	## The Hospitals are ordered as per their Mortality rates; the hospital with least mortality is placed first.
	if (outcome == "heart attack"){
		Ordered_list <- State_hospitals[order(State_hospitals[,11], State_hospitals[,2]), ]
		Ordered_list <- Ordered_list[!is.na(Ordered_list$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack),]
		Ordered_list$Rank <- rank(Ordered_list$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack, ties.method = "first")		
	}
	
	if (outcome == "heart failure"){
		Ordered_list <- State_hospitals[order(State_hospitals[,17], State_hospitals[,2]), ]
		Ordered_list <- Ordered_list[!is.na(Ordered_list$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure),]
		Ordered_list$Rank <- rank(Ordered_list$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure, ties.method = "first")
	}
	
	if (outcome == "pneumonia"){
		Ordered_list <- State_hospitals[order(State_hospitals[,23], State_hospitals[,2]), ]
		Ordered_list <- Ordered_list[!is.na(Ordered_list$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia),]
		Ordered_list$Rank <- rank(Ordered_list$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia, ties.method = "first")
	}
	
	
	if (num == "best") {num_temp <- 1}
	else if (num == "worst") {num_temp <- nrow(Ordered_list)}
	else num_temp <- num
	
	if (num_temp > nrow(Ordered_list)){return (NA)} 	## If a particular state has less hospital than the required rank, the function returns NA
	
	Ranked_Hospital <- Ordered_list$Hospital.Name[Ordered_list$Rank == num_temp]
	if (length(Ranked_Hospital) == 0){return (NA)} ## if no hospital is found corresponding to a given 
												## outcome and rank, then the NA value is retained
	
	## Return the hospital name for the given rank
	Ranked_Hospital
}