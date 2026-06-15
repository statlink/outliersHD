\name{dod}
\alias{dod}
\title{
Detection of high dimensional outliers using DOD
}

\description{
Detection of high dimensional outliers using DOD.
}

\usage{
dod(x, co = 0.1, a = 0.1)
}

\arguments{
\item{x}{
A matrix with numerical data with more columns (p) than rows (n), i.e. n<p.
}
\item{co}{
This is to compute the c parameter (\eqn{c=co\sqrt{pn}}). In the paper co=0.1, and this is the
default value in the function as well.
}
\item{a}{
The parameter (a>0 and a<0.5) that represents the maximum proportion of outliers.
It serves as a tuning parameter controling the maximum false positive rate.
}
}

\details{
High dimensional outliers (n<<p) are detected using distances of distances.
}

\value{
A vector with the index of the detected outlier(s).
}

\references{
Seong-ho Lee and Yongho Jeon (2025).
DOD: Detection of outliers in high dimensional data with distance of distances.
https://arxiv.org/abs/2511.02199
}

\author{
Michail Tsagris.

R implementation and documentation: Michail Tsagris \email{mtsagris@uoc.gr}.
}

\seealso{
\code{ \link{rmdp}, \link{ahd}
}
}

\examples{
x <- matrix(rnorm(20 * 50), ncol = 50)
x <- rbind(x, matrix(rnorm(2 * 50, 5, 1), ncol = 50) )
a <- dod(x)
}

