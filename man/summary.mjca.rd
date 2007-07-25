\name{summary.mjca}
\alias{summary.mjca}
\title{Summarizing multiple and joint correspondence analysis}
\description{Textual output summarizing the results of \code{\link{mjca}}, including a scree-plot of the principal inertias and row and column contributions.}
\usage{summary.mjca(object, scree = TRUE, rows = FALSE, ...)}
\arguments{
  \item{object}{Multiple or joint correspondence analysis object returned by \code{\link{mjca}}.}
  \item{scree}{Logical flag specifying if a scree-plot should be included in the output.}
  \item{rows}{Logical specifing whether the results for the rows should be included in the output (default = FALSE). }
  \item{...}{Further arguments (ignored)}
          }
\details{
The function \code{summary.mjca} gives the detailed numerical results of the \code{\link{mjca}} function. All the eigenvalues (principal inertias) are listed, their percentages with respect to total inertia, and a bar chart (also known as a scree plot). Then for the set of rows and columns a table of results is given in a standard format, where quantities are either multiplied by 1000 or expressed in permills (thousandths): the mass of each point (x1000), the quality of display in the solution subspace of \code{nd} dimensions, the inertia of the point (in permills of the total inertia), and then for each dimension of the solution the principal coordinate (x1000), the (relative) contribution COR of the principal axis to the point inertia (x1000) and the (absolute) contribution CTR of the point to the inertia of the axis (in permills of the principal inertia). \cr
For supplementary points, masses, inertias and absolute contributions (CTR) are not applicable, but the relative contributions (COR) are valid as well as their sum over the set of chosen \code{nd} dimensions (QLT).
}
\value{}
\examples{
 library(MASS)
 data(farms)
 summary(mjca(farms))
}
\keyword{}
