% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rawDiag.R
\name{readScans}
\alias{readScans}
\alias{readScan}
\alias{peaklistSet}
\title{readScans of a raw file}
\usage{
readScans(rawfile, scans)
}
\arguments{
\item{rawfile}{the name of the Thermo Fisher Scietific raw file which the data
are to be read from.}

\item{scans}{a vector of requested scan numbers.}
}
\value{
peaklistSet, a nested list  of \CRANpkg{protViz} peaklist objects.
}
\description{
the function reads scan information of a given set of scan
number using a dot net interface and the ThermoFisher NewRawFileReader 
libraries.
}
\examples{
(rawfile <- file.path(path.package(package = 'rawDiag'), 'extdata', 'sample.raw'))

S <- readScans(rawfile, 1:9)

S[[1]]
 
plot.peaklist(S[[1]])
op <- par(mfrow = c(3, 3))
lapply(S, function(x){ plot.peaklist(x, sub=x$scanType) })

}
\references{
\url{https://doi.org/10.5281/zenodo.2640013}
}
\author{
Christian Panse <cp@fgz.ethz.ch> 2018, 2019, 2020
}
