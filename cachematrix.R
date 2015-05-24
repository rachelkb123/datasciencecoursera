## Matrix inversion is usually a costly computation and there may be some benefit to 
## caching the inverse of a matrix rather than compute it repeatedly. 


## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
            m <- matrix(nrow = a, ncol = b)
            set <- function(y) {
                    x <<- y
                    
  }
  get <- function() x
  setcache <- function(cache) m 
    inverse <- 1/m
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed), 
## then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) 

  ## Return a matrix that is the inverse of 'x'
