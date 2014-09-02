\name{RListToVector}
\alias{RListToVector}
\title{
Internal function
}
\description{
Internal function
}
\usage{
RListToVector(xList, G, T)
}
\arguments{
  \item{xList}{
List of included associations (C format)
}
  \item{G}{
Number of gene expression probes
}
  \item{T}{
Number of CGH probes
}
}
\details{
This is an internal function and is not supposed to be used by the user.
}
\value{
Return a vector with counts for every position of the association matrix.
}
\author{
Alberto Cassese
}
