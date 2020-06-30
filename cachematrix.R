## Put comments here that give an overall description of what your
## functions do

# My functions will cache some data & thereby shorten the computational time for computing inverse of a matrix.

## Write a short comment describing this function

# This function will make the Cache Matrix.

makeCacheMatrix <- function(x = matrix()) {
  i <-  NULL
  set <- function(y){
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) i <<- solve
  getsolve <- function() i
  list(set=set, get=get, setsolve=setsolve, getsolve=getsolve)
}


## Write a short comment describing this function

# This function will calculate the inverse of the given matrix if it is not already cached.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getsolve()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setsolve(i)
  i
  }
