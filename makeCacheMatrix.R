makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  if (det(x) == 0) message("Warning! D = 0. The matrix is singular!") 
  get <- function() x                                         ## to transfer incoming matrix
  setinverse <- function(inverse) inv <<- inverse             ## NB! to store calculated inverse
  getinverse <- function() inv                                ## to return stored inverse 
  list(get=get, setinverse=setinverse, getinverse=getinverse) ## return as a whole function result 
}
