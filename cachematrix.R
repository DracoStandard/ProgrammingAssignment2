## Put comments here that give an overall description of what your
## functions do

## create a chacheable matrix

makeCacheMatrix <- function(x = matrix()) {

    m<- NULL
    set<- function(y){
      x <<-y
      m<<- NULL
    
    }
    get <- function() x
    setInverse <-function(solve) m <<- solve
    getInverse <- function() m
    list(set=set, get = get, setInverse=setInverse, getInverse=getInverse)
}


## solve and store the inverse of the chacheable matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <-x$getInverse()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    data <- x$get()
    m<-mean (data, ...)
    x$setInverse(m)
    m
  
}
