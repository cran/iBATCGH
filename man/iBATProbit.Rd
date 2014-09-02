\name{iBATProbit}
\alias{iBATProbit}

\title{
Main - Probit selection prior
}
\description{
Perform MCMC iterations of the model described in the reference.
}
\usage{
iBATProbit(Y, X, distance, disfix, intercept=1, xi,
R=-1, tran, mu, sigma=((rgamma(4,1,1))^(-0.5)),
cmu=1/1000000, c=10, delta=3, d, alpha0=2.32,
alpha1=1, deltak=c(-1,0,0.58,1), tauk=c(1,1,1,2),
upp_bounds=c(-0.1, 0.1, 0.73, Inf),
low_bounds=c(-Inf, -0.1, 0.1, 0.73),
alpha_IG=c(1,1,1,1), beta_IG=c(1,1,1,1),
low_IG=c(0.41,0.41,0.41,1), a=c(1,1,1,1),
niter=500000, burnin=200000, Cout=1000,
phi=0.5, pR=0.4, selectioncgh=-1, pXI=0.6)
}
\arguments{
  \item{Y}{
Matrix of gene expression data
}
  \item{X}{
Matrix of CGH data
}
  \item{distance}{
Vector of distance between CGH probes
}
  \item{disfix}{
Length of the chromosome under investigation
}
  \item{intercept}{
If set to one, the intercept is included in the regression model
}
  \item{xi}{
Initialized matrix of latent states
}
  \item{R}{
Initialized association matrix to be vectorized; if set to -1, a vector of all zero is automatically created
}
  \item{tran}{
Initialized transition matrix
}
  \item{mu}{
Initialized state specific mean vector
}
  \item{sigma}{
Initialized state specific sd vector
}
  \item{cmu}{
Parameter that control the variance of the prior on the intercept
}
  \item{c}{
Parameter that determine the shrinkage in the model
}
  \item{delta}{
Parameter of the Inverse-Gamma prior on the error variance
}
  \item{d}{
Parameter of the Inverse-Gamma prior on the error variance
}
  \item{alpha0}{
Baseline intercept of the selection prior
}
  \item{alpha1}{
Parameter that regulates the strength of the spatially informed dependence
}
  \item{deltak}{
Vector of mean of the truncated normal prior on the state specific mean
}
  \item{tauk}{
Vector of sd of the truncated normal prior on the state specific mean
}
  \item{upp_bounds}{
Vector of upper bounds of the truncated normal prior on the state specific mean
}
  \item{low_bounds}{
Vector of lower bounds of the truncated normal prior on the state specific mean
}
  \item{alpha_IG}{
Parameter of the truncated Inverse-Gamma prior on the state specific sd
}
  \item{beta_IG}{
Parameter of the truncated Inverse-Gamma prior on the state specific sd
}
  \item{low_IG}{
Truncation of the truncated Inverse-Gamma prior on the state specific sd
}
  \item{a}{
Vector of parameters of the Dirichlet prior on the transition matrix
}
  \item{niter}{
Number of Monte Carlo Markov Chain iteration
}
  \item{burnin}{
Burn-in
}
  \item{Cout}{
Print the number of iterations already ran every Cout iterations
}
  \item{phi}{
Probability of an A/D step
}
  \item{pR}{
Expected percentage of number of updates on the row (gene expression) of the association matrix at each iteration
}
  \item{selectioncgh}{
Number of samples not in neutral state in order to consider a CGH as a potential candidate for association with gene expression; if set to -1, it is automatically set to 10\% of the samples
}
  \item{pXI}{
Expected percentage of number of updates on the row (samples) of the latent state matrix at each iteration
}
}
\value{
A list made of 4*niter+3 elements. The first niter elements store, for every iteration, a vector of the positions of the association matrix set to one. The second, third and fourth niter elements store the value, at every iteration, of the transition matrix, the vectors of state specific mean and variance, respectively. The last three elements store three matrices that counts the number of times the corresponding latent state has been set to 1,3 or 4.
}
\references{
Cassese A, Guindani M, Vannucci M. A Bayesian integrative model for genetical genomics with spatially informed variable selection. Cancer Informatics.
}
\author{
Alberto Cassese
}

\examples{
\dontrun{
data(TCGA_lung)

Y <- TCGA_lung$Affy
X <- TCGA_lung$aCGH
distance <- TCGA_lung$distance
disfix <- 199446827
xi <- InitXi(X)
tran <- Tran(xi)
mu <- InitMu()
d=0.2587288

Y <- Center(Y)

res <- iBATProbit(Y=Y,X=X,distance=distance,disfix=disfix,xi=xi,tran=tran,mu=mu,d=d)

summRes <- Inference(res,G=dim(Y)[[2]],M=dim(X)[[2]],niter=niter,burnin=bi,threshold=0.5)
}
}
\keyword{Main}
