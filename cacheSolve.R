cacheSolve <- function(x, ...) {
  inv <- x$getinverse()             ## checking the inverse in cache 
  if(!is.null(inv)) {               ## return if found & skip
    message("getting cached data.")
    return(inv)
  }
  data <- x$get()                   ## getting matrix from incoming function
  if (det(data) == 0) message("Can't calculate singular matrix with D=0")
  else                              ## inverting if possible
    {inv <- solve(data)
    x$setinverse(inv)               ## stroring by means of incoming function 
    inv}                            ## return inverse 
}
