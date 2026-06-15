ahd <- function(x, a = 0.01, k = 10, p = 0.5, tn = 50) {
  n <- dim(x)[1] 

  m <- Rfast::colMedians(x)
  s <- Rfast2::colQuantile( x, c(1/4, 3/4) )
  s <- s[2, ] - s[1, ]
  x <- t(x) - m
  x <- t( x / s)

  d_knn1 <- Rnanoflann::nn(x, x, k + 1)$distances  
  d_knn <- d_knn1[, -1]
  dif <- Rfast::coldiffs(d_knn1)
  max_dif <- Rfast::rowMaxs(dif)
  d <- d_knn[cbind(1:nrow(d_knn1), max_dif)]

  ord <- order(d)
  gaps <- c( 0, diff(d[ord]) )
  n4 <- max( min( tn, floor(n / 4) ), 2)
  J <- 2:n4
  start <- max( floor(n * (1 - p) ), 1) + 1
  ghat <- numeric(n)
  for ( i in start:n )  ghat[i] <- sum( (J / (n4 - 1) ) * gaps[i - J + 1 ] )  
  logAlpha <- log(1 / alpha)
  bound <- Inf

  for ( i in start:n ) {
    if ( gaps[i] > logAlpha * ghat[i] )  {
      bound <- d[ord][i - 1]
      break
    }
  }
  ex <- which( d > bound )
  list(scores = d, outliers = ex)
}



