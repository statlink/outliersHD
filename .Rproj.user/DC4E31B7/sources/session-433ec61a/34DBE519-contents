\name{ahd}
\alias{ahd}
\title{
Detection of high dimensional outliers using nearest neighbours
}

\description{
Detection of high dimensional outliers using nearest neighbours.
}

\usage{
ahd(x, a = 0.01, k = 10, p = 0.5, tn = 50)
}

\arguments{
\item{x}{
A matrix with numerical data with more columns (p) than rows (n), i.e. n<p.
}
\item{a}{
Threshold for determining the cutoff for outliers. Observations are considered outliers if they fall in the
(1-a) tail of the distribution of the nearest neighbor distances between exemplars.
}
\item{k}{
The number of nearest neighbours to consider.
}
\item{p}{
The proportion of possible outliers.
}
\item{tn}{
Sample size to calculate an empirical threshold.
}
}

\details{
For more information see Wilkinson (2018) and the R package "stray" that has implemented the algortihm.
Our implementation is a faster (and slightly different) version of theirs.
}

\value{
A list including:
\item{scores}{
The score values of each observation.
}
\item{outliers}{
The indices of the possible outlier(s).
}
}

\references{
Wilkinson L. (2018). Visualizing big data outliers through distributed aggregation.
IEEE Transactions on Visualization and Computer Graphics 24(1): 256--266.
}

\author{
Michail Tsagris.

R implementation and documentation: Michail Tsagris \email{mtsagris@uoc.gr}.
}

\seealso{
\code{ \link{dod}, \link{rmdp}
}
}

\examples{
x <- matrix(rnorm(20 * 50), ncol = 50)
x <- rbind(x, matrix(rnorm(2 * 50, 5, 1), ncol = 50) )
a <- ahd(x)
}

