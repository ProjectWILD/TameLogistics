# This class leverages the Linear Programming through the lpSolve R package to generate 
# assignments based on ranked prefereces. This is a function that specalizes the ability
# of the lp package to make an easy to use answer to assignment problem. Instead of just 
# returning a nxn matrix, returning a mapping of item to placement
library(lpSolve)

#Input: DF, the i,j entry of the data.frame should be the jth item's integer rank of the 
# ith placement with the rank being from 1-n with 1 being the most favorable. This means that
# every column vector will be the list of preferces of each item being placed
discretePlace <- function(rank){
  require(lpSolve)
  
  #take out placement names
  placementMatrix <- lp.assign(data.matrix(rank))$solution
  
  placementOutput <- 1:ncol(placementMatrix) %>% map(function(colz){
    return(row.names(rank)[which(placementMatrix[,colz] %in% 1)])
  }) %>% unlist()
  
  #returns easy to read data.frame mapping item to placement
  return(data.frame(item = colnames(rank), placement = placementOutput))
}


#Example data from room selection assignment problem
room <- data.frame(Maddy = c(5,6,3,2,4,1), Shayna = c(6,5,4,3,1,2), Tribby = c(5,6,3,1,4,2), JM = c(1,5,6,4,2,3),Abbie = c(5,6,1,2,3,4), George = c(2,1,4,5,6,3))
