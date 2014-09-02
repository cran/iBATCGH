\name{Center}
\alias{Center}
\title{
Preprocessing - Center gene expression data
}
\description{
This function takes as input a matrix and center each column with respect to its mean.
}
\usage{
Center(Y)
}
\arguments{
  \item{Y}{
The matrix of data to be centered.
}
}
\details{
This function is used to center each gene of the gene expression matrix.
}
\value{
The matrix of centered data.
}

\author{
Alberto Cassese
}

\examples{
data(NCI_60)
Y <- NCI_60$Affy
Y<-Center(Y)
}
\keyword{Preprocessing}
