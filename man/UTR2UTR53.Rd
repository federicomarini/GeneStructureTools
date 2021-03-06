% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/UTR2UTR53.R
\name{UTR2UTR53}
\alias{UTR2UTR53}
\title{Annotate UTRs from Gencode GTF as 5' or 3'}
\usage{
UTR2UTR53(gtf)
}
\arguments{
\item{gtf}{GRanges object of the GTF}
}
\value{
gtf annotation GRanges object
}
\description{
Annotate UTRs from Gencode GTF as 5' or 3'
}
\examples{
gtfFile <- system.file("extdata","example_gtf.gtf",
package = "GeneStructureTools")
gtf <- rtracklayer::import(gtfFile)
gtf <- UTR2UTR53(gtf)
table(gtf$type)
}
\seealso{
Other gtf manipulation: \code{\link{addBroadTypes}},
  \code{\link{exonsToTranscripts}},
  \code{\link{filterGtfOverlap}},
  \code{\link{removeDuplicateTranscripts}},
  \code{\link{removeSameExon}},
  \code{\link{reorderExonNumbers}}
}
\author{
Beth Signal
}
