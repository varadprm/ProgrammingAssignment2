

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y){
                x <- NULL
                inv <- NULL
                }
        get <- function() {x}
        setInverse <- function(inverse) {inv <<- solveMatrix}
        getInverse <- function() {inv}
        list(set= set, get= get, setInverse = setInverse, getInnverse = getInverse)

}

cacheSolve <- function(x, ...) {
        inv <- x$getInverse()
        if(!is.null(inv)){
                message("getting cached data")
                retur(inv)
                }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(inv)
        inv
}
