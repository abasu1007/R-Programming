## This script consists of two functions makeCacheMatrix and cacheSolve
## makeCacheMatrix accepts as argument an invertible matrix
## cacheSolve accepts as argument a list containing the functions defined within makeCacheMatrix 

## makeCacheMatrix accepts an invertible function as an argument and returns a list
## Two variables, x and Inv are defined in the environment of the makeCacheMatrix function
## The <<- operator ensures that the value of Inv gets redefined in the environment
## of this function when setInverse is called.

makeCacheMatrix <- function(x = matrix()) {
        ## The Inv gets initiated to NULL and will remain so until the value is redefined elsewhere 
        ## in this environment
        Inv <- NULL
        
        ## set function assigns the invertible matrix to a variable x while assigning NULL to Inv
        set <- function(y) {
                x <<- y
                Inv <<- NULL
        }

        ## get function calls the variable x which is the invertible matrix
        get <- function() x
        
        ## setInverse function reassigns a new value to the variable Inv
        setInverse <- function(inverse) Inv <<- inverse

        ## getInverse returns the existing value of Inv 
        getInverse <- function() Inv

        ##the following list is returned after the function has run
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## The cacheSolve function performs three functions:
## a) checks the current value assigned to Inv
## b) if the current value is NULL it assigns a new value to Inv by using the solve function and then calling setInverse from makeCacheMatrix
## c) if the current value is not NULL, then it outputs the current assigned value of Inv

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        Inv <- x$getInverse()
        if(!is.null(Inv)) {
                message("getting inverse from cached value")
                return(Inv)
        }
        Inv <- solve(x$get(), ...)
        x$setInverse(Inv)
        Inv
}