## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  # initialize inverse matrix
  i <- NULL
  
  # set matrix
  set <- function(y){
    x <<- y
    i <<- NULL
  }
  
  # get matrix
  get <- function(){
    x
  }
  
  # set inverse
  setInverse <- function(inverse){
    i <<- inverse
  }
  
  # get inverse
  getInverse <- function(){
    i
  }
  
  # return list of methods
  list(set = set, get = get, 
       setInverse = setInverse, getInverse = getInverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  i <- x$getInverse()
  
  # if solved before
  if (!is.null(i)){
    message("getting cached data")
    return(i)
  }
  
  # else
  data <- x$get()
  i <- solve(data)
  x$setInverse(i)
  
  # return inverse matrix
  i
  
}