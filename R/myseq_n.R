myseq_n <- function(x, n){
  if (!(length(x) == 3 & is.numeric(x)))
    stop("Do not meet requirements")
  if(!(n > 0 & as.integer(n)))
    stop("Do not meet requirements")

  v <- vector(mode = "integer", length = n)
  for (i in seq_along(v)) {
    if (i <= 3) {
      v[i] <- x[i]
    }else{
      v[i] <- v[i - 1] + (v[i - 3] - v[i - 2]) / i
    }
  }
  return(v[n])
}
# Test it
myseq_n(x=c(2,4,3), n= 4)
