## Eduardo Geralde Neto

#This function computes the inverse of the special "matrix" returned by the function 
#makeCacheMatrix. If the inverse has already been calculated (and the matrix has
#not changed), then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        m <- x$getsolve()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m
}