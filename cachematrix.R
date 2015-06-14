## Functions to cache a matrix inverse

## Caches a Matrix and sets methods for matrix

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() {x}
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() {inv}
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Inverts a matrix if the matrix is not already inverted and stores the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getinverse()
    if(!is.null(inv)) {
        print("getting cached data")
        return(inv)
    }
    mat <- x$get()
    inv <- solve(mat)
    x$setinverse(inv)
    
}
