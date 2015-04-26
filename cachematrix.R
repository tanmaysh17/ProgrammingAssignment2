## Programming Assignement 2
# makeCacheMatrix is a function that returns a list of functions (as describer below). 
# It's purpose is to store/cache a matrix and it's inverse value.

# setMatrix     -       Sets the new matrix for which inverse has to be cached
# getMatrix     -       Prints the matrix, inverse for which is to be cached
# setInverse    -       Caches the invserse of the matrix
# getinverse    -       Returns the cached value

# makeCacheMatrix function
makeCacheMatrix <- function(x = matrix()) {

        # Hold the cached value, initially nothing hence NULL
        Inv <- NULL
        
        # Sets in a new value for a matrix for which inverse is to be cached
        setMatrix <- function(y){
                x <<- y
                # flush the cache, as the matrix now has a new value
                Inv <<- NULL
        }
        
        # Returns the stored matrix
        getMatrix <- function() x
        
        # Cache the given inverse of the matrix
        setInverse <- function(inverse) Inv <<- inverse
        
        # Get the cached value of inverse of the matrix
        getInverse <- function() Inv
        
        # Return a list of functions of the same name as their purpose
        List(setMatrix = setMatrix, getMatrix = getMatrix, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
