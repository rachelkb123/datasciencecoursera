## As explained in Assignment #2, matrix inversion is usually a costly 
## computation and there may be some benefit to caching the inverse of 
## a matrix rather than computing it repeatedly. 

## The following "makeCacheMatrix" function creates a special "matrix" 
## object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  
  inv = NULL
  
  set = function(y) { 
    x <<- y
    inv <<- NULL
  }
  
  get = function() x
  setinv = function(inverse) inv <<- inverse 
  getinv = function() inv
  
  list(set=set, get=get, setinv=setinv, getinv=getinv)

}

## The following function "cacheSolve" computes the inverse of the special "matrix" 
## returned by the "makeCacheMatrix" function above. If the inverse has already been 
## calculated (and the matrix has not changed), then the function "cacheSolve"
## should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  
  inv = x$getinv()
  
  if (!is.null(inv)){
    message("retrieving cached data")
    return(inv)
  }
  
  mat.data = x$get()
  inv = solve(mat.data, ...)
  
  x$setinv(inv)
  
  return(inv)
}

## Return a matrix that is the inverse of 'x'