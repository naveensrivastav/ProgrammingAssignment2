## There are two function "makeCacheMatrix" which takes a 2 X 2 matrix and conver the same into special matrix and cache its inverse also and return both in a list.

## "cacheSolve" takes a matrix which check wether the matrix passed == special matrix and its inverse is calculated.
## if both are true cached Inverse matrix is printed or returned else the passed matrix will be converted into special matrix.



## Here matrix as argument is converted to special matrix and its inverse matrix is also assigned to cacheinverse special matrix
## and returns you the matrix and its inverse 


makeCacheMatrix <- function(x = matrix()) {
splmatrix <<- x
  cacheinverse <<- solve(x)
 
 list(splmatrix = splmatrix, cacheinverse = cacheinverse)
}


## This function again takes a 2 X 2 matrix and check if its already there in cache and inverse is calculated 
## if TRUE cached inverse is returned  else the matrix passed will be turned into special matrix and its inverse will be calculated through
## makeCacheMatrix  and invere is returned.

cacheSolve <- function(x, ...) {
       
  if( !is.null(cacheinverse) && x == splmatrix )
     
          message(" Getting Cached Data")
          return(cacheinverse)
  else
  {
   ## When the passed matrix is not cached
      temp <- makeCacheMatrix(x)
   
   ## Return a matrix that is the inverse of 'x'
      temp$cacheinverse
  }  
              
}
