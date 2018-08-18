## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        
        get <- function() x
        
        
        setinverse <- function(inverse) i <<- inverse

        
        getinverse <- function() i
        
        #This will allow us to reuse it when we assign this function
        list(set = set, 
             get = get,
             setinverse = setinverse,
             getinverse = gcaetinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        
        if(!is.null(i)) {
                message("retrieving your cached data")
                return(i)
        }
        
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        
        ## Return a matrix that is the inverse of 'x'
        return(i)
        
}
