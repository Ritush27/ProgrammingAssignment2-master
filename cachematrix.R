## Put comments here that give an overall description of what your
## functions do

## function below creates a speacial "matrix" that can cache its inverse 

makeCacheMatrix <- function(x = matrix()) {
inv<- NULL
set<- function(y) {
	x <<- y
	inv <<-NULL
}
get <- function() x
setInverse <- function (inverse) inv <<-inverse
getInverse <- function() inv
list(set = set,
get = get,
setInverse = setInverse, 
getInverse = getInverse)
}

## function below finds the inverse of the "matrix" created. if the inverse has been previously calculated and the matrix is unchanged the output should simply be the inverse retrieved from the cache


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv ,- x$getInverse()
if (!is.null(inv)) {
	message("getting cached data")
	return(inv)
}
mat <- x$get()
inv <- solve(mat, ...)
x$setInverse(inv)
inv
}





