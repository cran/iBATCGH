\name{TCGA_lung}
\alias{TCGA_lung}
\docType{data}
\title{
TCGA lung squamous cell carcinoma data
}
\description{
TCGA lung squamous cell carcinoma after filtering out data as described in the reference.
}
\usage{data(TCGA_lung)}
\format{
The format is a list of 3 elements\cr
 $ aCGH\cr
 $ Affy\cr
 $ distance
}
\source{
Full matrix of data obtained from \url{https://tcga-data.nci.nih.gov/tcga/}.
}
\references{
Cassese A, Guindani M, Vannucci M. A Bayesian integrative model for genetical genomics with spatially informed variable selection. Cancer Informatics.
}
\examples{
data <- data(TCGA_lung)
}
\keyword{datasets}
