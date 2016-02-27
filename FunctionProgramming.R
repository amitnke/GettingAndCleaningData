factorial <- function(a){
	loop <- function(acc, n){
		if(n==0) acc
		else loop(acc*n, n-1)
	}
	loop(1,a)
}
cube <- function(a){
	a*a*a
}

id <- function(x) {
	x
}
sumCube <- function(a, b){
	if(a > b) 0 else cube(a) + sumCube(a+1,b)
}

sum <- function(f, a, b){
	if(a > b) 0
	else f(a) + sum(f, a+1, b)
}
factorial2 <- function(n) {
	n*factorial2(n-1)
}
