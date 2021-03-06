% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AssignMutations.R
\name{getClusterDensity}
\alias{getClusterDensity}
\title{Obtain the mean density of each cluster.}
\usage{
getClusterDensity(clustering_density, cluster_locations,
  min.window.density)
}
\arguments{
\item{clustering_density}{Posterior density estimate of where clusters are}

\item{cluster_locations}{Estimated cluster locations within the density}

\item{min.window.density}{Minimum stepsize used}
}
\value{
A vector with for each cluster the fraction of density
}
\description{
This function takes the cluster_locations and for
each cluster it walks from the cluster peak along CCF space until the median density
drops below the supplied minimum in both directions. After obtaining the CCF space that a
cluster takes up we calculate the mean density in that space. Finally across all cluster
densities we normalise to obtain the fraction of total density that each cluster represents
}
\author{
sd11, dw9
}
