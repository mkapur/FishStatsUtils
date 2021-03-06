% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deprecated.R
\name{Coherence}
\alias{Coherence}
\title{Calculate stability metrics}
\usage{
Coherence(Report, Data, covhat = NULL, yearbounds_zz = matrix(c(1,
  Data$n_t), nrow = 1))
}
\arguments{
\item{Report}{output report, e.g., from \code{Report <- obj$report()}}

\item{Data}{tagged list of input data}

\item{covhat}{estimated covariance used for calculating coherence}

\item{yearbounds_zz}{matrix with two columns, giving first and last years for defining one or more periods (rows) used to calculate changes in synchrony over time (only used if \code{Options['Calculate_Synchrony']=1})}
}
\value{
Tagged list containing measures of synchrony
\describe{
  \item{phi_xz}{Synchrony index for each site (x) and each period (row of \code{yearbounds_zz})}
  \item{phi_z}{weighted-average of \code{phi_xz} for each period, weighted by average community-abundance at each site in that period}
  \item{psi}{Measure of proportion of variance explained by leading eigen-vectors}
  \item{L_c}{Cholesky decomposition of \code{covhat}}
}
}
\description{
\code{Coherence} calculates buffering (`phi`) and coherence (`psi`)
}
