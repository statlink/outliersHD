dod <- function(x, co = 0.1, a = 0.1) {
  D <- Rfast::Dist(x)
  d <- Dist(D)
  ti <- sqrt( Rfast::rowsums( ( d - Rfast::colMedians(d) )^2 ) )
  clu <- kmeans(ti, 2)
  ni <- table(clu$cl)
  entos <- which.min(clu$centers)
  ektos <- which.max(clu$centers)
  n <- dim(x)[1]  ;  p <- dim(x)[2]
  g <- min( ti[clu$cl == ektos] ) - max( ti[clu$cl == entos] )
  out <- NULL
  co <- co * sqrt(p * n)
  if ( g > co  & ni[ektos] > n * a ) {
    out <- which( clu$cl == ektos)
  }  
  out
}  