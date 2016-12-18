#This function, makeVector creates a special "vector",
# which is really a list containing a function to

#set the value of the vector
#get the value of the vector
#set the value of the mean
#get the value of the mean

#The makeVector function will interact with cacheMean function to cache
#some values so that when we need it again, this values can be looked up
#in the cache, rather than recomputed.

#We will take advantage of the scoping rules of the R language, to
#manipulate and preserve state inside of an R object.

makeVector <- function(x = numeric()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmean <- function(mean) m <<- mean
        getmean <- function() m
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}

