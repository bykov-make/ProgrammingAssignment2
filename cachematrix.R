## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 m <- NULL
 #set the value of the matrix
 set <- function(y) {
   x <<- y
   m <<- NULL
 }
 
 #get the value of the matrix
 get <- function() x
 
 #set the value of the inverted matrix
 seti <- function(inv) m <<- inv
 
 #get the value of the inverted matrix
 geti <- function() m
 
 list( set = set, get = get,
       seti = seti , geti = geti)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$geti()
  if(!is.null(m)){
    #return the inverted matrix from cache
     message("Cache Inversed Matrix")
     return(m)
  }
  #get the values of the matrix
  data <- x$get()
  #invert the matrix
  m <- solve(data)
  #set the matrix to m
  x$seti(m)
  m
}
