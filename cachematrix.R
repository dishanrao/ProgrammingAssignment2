##the below function makes a matrix class
##with - get() set() setinverse() getinverse() functions
##inverse (ie.m) is set to null with the use of << operator



makeCacheMatrix <- function(x = matrix()) {
		m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) m <<- inverse
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)



}


##this function calculates the inverse if its not present if it 
##uses the cached value and displays that 

cacheSolve <- function(x, ...) {
      m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)		##displays cached inverse
        }
        data <- x$get()
        m <- solve(data)
        x$setinverse(m)
        m				##displays calculated inverse

}
