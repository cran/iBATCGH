\name{InferenceMu}
\alias{InferenceMu}
\title{
Postprocessing - Inference on the vector of state specific mean
}
\description{
This function returns the mean of vector of state specific mean in the Monte Carlo Markov Chain iterations, after removing burn-in.
}
\usage{
InferenceMu(listMu, niter, burnin)
}
\arguments{
  \item{listMu}{
Third niter elements of the output of the main function
}
  \item{niter}{
Number of Monte Carlo Markov Chain iteration
}
  \item{burnin}{
Burn-in
}
}

\value{
Inferred vector of state specifc mean.
}
\references{
Cassese A, Guindani M, Tadesse M, Falciani F, Vannucci M. A hierarchical Bayesian model for inference of copy number variants and their association to gene expression. Annals of Applied Statistics, 8(1), 148-175.\cr
Cassese A, Guindani M, Vannucci M. A Bayesian integrative model for genetical genomics with spatially informed variable selection. Cancer Informatics.
}
\author{
Alberto Cassese
}

\seealso{
See Also as \code{\link{Inference}}
}
\examples{
##See Inference
}
\keyword{Postprocessing}
