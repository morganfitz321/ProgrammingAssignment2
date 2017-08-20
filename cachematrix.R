## Sets special matrix and then retrieves inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
inv<- NULL 
set <- function(y){
	x <<- y
	inv <<- NULL 
}
#sets value of matrix
get <- function () x ##gets value of matrix
setinverse <- function(inverse) inv <<-inverse  ##sets the inverse
getinverse<-function() inv  ##gets the inverse 
list(set = set, get = get, 
setinverse = setinverse, 
getinverse = getinverse )
}

cacheSolve <- function(x, ...) ##calculates inverse {
        ## Return a matrix that is the inverse of 'x'
inv<- x$getinverse()
if(!is.null(inv)){
	message("getting cached data")
	return(inv)
}
##if inverse is already calculated then it should retrieve inverse from the cache
mat <- x$get
inv <- solve(mat,...)
x$setInverse(inv)
inv
}
