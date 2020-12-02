# Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# This function makes two elements X (the matrix) and inverse (the inverse of the matrix "X")
# also, it gets and set both elements

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL 
    
    set <- function(y){x <<- y
    inverse <<- NULL}
    get <- function(){x}
    setinverse <- function(inv) {inverse <<- inv}
    getinverse <- function(){inverse}
    
    list(set = set, get = get, setinverse = setinverse,
         getinverse = getinverse)
}


## Write a short comment describing this function
# this function inverse the x matrix

cacheSolve <- function(x, ...) {
    inverse <- x$getinverse()
    if (!is.null(inverse)){
        message("getting cached data")
        return(inverse)
    }
    data <- x$get()
    inverse <- solve(data, ...)
    x$setinverse(inverse)
    inverse
    ## Return a matrix that is the inverse of 'x'
}
