## There are two function "makeCacheMatrix" which takes a 2 X 2 matrix and conver the same into special matrix and cache its inverse also and return both in a list.

## "cacheSolve" takes a list with two element returned by makeCacheMatrix



## Here argument is matrix and converted to special matrix. Its inverse is calculated and is cached.
## This function returned a list of two element both are matrix, one is the converted special matrix and its inverse.

makeCacheMatrix <- function(x = matrix()) {
  splmatrix <<- x
  cacheinverse <<- solve(x)
  
  list(splmatrix = splmatrix, cacheinverse = cacheinverse)
}


## This function takes a list with two element x$splmatrix and x$cacheinverse.
## x$splmatrix checks if its the same matrix and its cached inverse in not NULL.

cacheSolve <- function(x, ...) {
  
  if( !is.null(cacheinverse) && x$splmatrix == splmatrix )
    
   { 
  print(" Getting Cached Data ...")
  x$cacheinverse
  return(x$cacheinverse)
   }
  
    else
  {
    ## When the passed matrix is not cached
    temp <- makeCacheMatrix(x$splmatrix)
    
    ## Return a matrix that is the inverse of 'x'
    temp$cacheinverse
  }  
  
}
