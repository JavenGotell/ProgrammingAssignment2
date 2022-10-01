## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
}

## A pair of functions to cache the inverse of a matrix

## Creates unique matrix object to cache its inverse
makeCacheMatrix <- function(x = matrix()) {

## Inverse property
i <- NULL

## setting matrix
set <- function(y) {
x <<- y
i <<- NULL
}

## getting matrix
get <- function() {
## Returning matrix
x
}

## Setting inverse of matrix
setinverse <- function(inverse) {
i <<- inverse
}

## Getting inverse of matrix
getinverse <- function() {
## Returning inverse property
i
}

## Returning list of methods
list(set = set, get = get,
setinverse = setinverse,
getinverse = getinverse)
}


cacheSolve <- function(x, ...) {
## Returning matrix with inverse of 'x'	
i <- x$getInverse()

##Return only the inverse if already set
if (!is.null(i)) {
message("getting cached data")
return(i)
}

## Get matrix from object
data <- x$get()

## Calculating inverse
i <- solve(data, ...)
x$setinverse(i)

## Return the matrix
i
}
