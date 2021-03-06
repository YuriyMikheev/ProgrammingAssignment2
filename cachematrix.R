## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  m <- NULL

  # function "set"  stores inversed matrix
  
  set <- function(y) {
    x <<- y
    m <<- NULL  
  }
   
  # function "get" stores original matrix
  
  get <- function() x
  setinversematrix <- function(inverersematrix) m <<- inversematrix
  getinversematrix <- function() m
  
  
  # return stored objects list 
  list(set = set, get = get,
       setinversematrix = setinversematrix,
       getinversematrix = getinversematrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {

  ## Return a matrix that is the inverse of 'x'
  
  m <- x$getinversematrix()
  
  # if inversed matrix was cashed return it
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  
  # else calculate inverse matrix and store in cache
  data <- x$get()
  m <- solve(data, ...)
  x$setinversematrix(m)
  m
  
}
