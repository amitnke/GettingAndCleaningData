sum <- function(fun, a, b){
        sumf <- function(a, b){
                if(a > b) 0
                else fun(a) + sumf(a+1, b)
        }
        sumf(a,b)
}

factorial <- function(a){
        loop <- function(acc, n){
                if(n==0) acc
                else loop(acc*n, n-1)
        }
        loop(1,a)
}
sum(factorial, 1, 10) + sum(function(x)x*x*x, 1, 10) + sum(function(x)x*x, 1, 10)

