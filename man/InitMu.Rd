\name{InitMu}
\alias{InitMu}
\title{
Preprocessing - Initialize state specific mean vector
}
\description{
This function initialize the state specific mean vector, sampling eache element independently from the prior, i.e. independent truncated normal distributions.
}
\usage{
InitMu(deltak = c(-1, 0, 0.58, 1), tauk = c(1, 1, 1, 2),
low_bounds = c(-Inf, -0.1, 0.1, 0.73), upp_bounds = c(-0.1, 0.1, 0.73, Inf))
}
\arguments{
  \item{deltak}{
Vector of mean of the truncated Normal distributions
}
  \item{tauk}{
Vector of sd of the truncated Normal distributions
}
  \item{low_bounds}{
Vector of lower bound of the truncated Normal distributions
}
  \item{upp_bounds}{
Vector of upper bound of the truncated Normal distributions
}
}
\value{
A vector of state specific mean, that should be used as input of the main function.
}
\references{
Guha S, Li Y, Neuberg D. Bayesian hidden Markov modelling of array cgh data. JASA. 2008;103(482):485-497.
}
\author{
Alberto Cassese
}
\examples{
mu <- InitMu()
}

\keyword{Prerocessing}
