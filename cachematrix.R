## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        ## initialize the inverse property
        m <- NULL
        ## set the matrix
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        ## get the matrix
        get <- function(){
                x
        }
        ## set the inverse of the matrix
        setinverse<- function(inverse) {
                m <<- inverse
        }
        ## get the inverse of the matrix
        getinverse<- function() {
                m
        }
        list(set = set,
             get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## check a matrix
        m <- x$getinverse()
        ## if the inverse has alreday been calculated
        if(!is.null(m)) {
                ## it return the matrix
                message("getting cached data")
                return(m)
        }
        ## otherwise, get the matrix
        data <- x$get()
        ## calculate the inverse
        m <- solve(data,...)
        ## Return a matrix that is the inverse of 'x'
        x$setinverse(m)
        m
}
