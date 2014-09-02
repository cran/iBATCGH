\name{InitXi}
\alias{InitXi}
\title{
Preprocessing - Initialize matrix of latent states
}
\description{
This function initialize the matrix of latent states, using a crude estimator.
}
\usage{
InitXi(X, bounds = c(-0.5, 0.29, 0.79))
}
\arguments{
  \item{X}{
Matrix of aCGH data
}
  \item{bounds}{
Thresholds used to estimate the latent states
}
}
\details{
The procedure is based on thresholds that group the data into subsets. Each subset is associated to a latent state.
}
\value{
Return a matrix of estimated latent states, that should be used as input of the main function.
}
\references{
Cassese A, Guindani M, Tadesse M, Falciani F, Vannucci M. A hierarchical Bayesian model for inference of copy number variants and their association to gene expression. Annals of Applied Statistics, 8(1), 148-175.\cr
Cassese A, Guindani M, Vannucci M. A Bayesian integrative model for genetical genomics with spatially informed variable selection. Cancer Informatics.
}
\author{
Alberto Cassese
}

\seealso{
See Also \code{\link{Tran}}
}
\examples{
data(NCI_60)
X <- NCI_60$aCGH
xi <- InitXi(X)
}
