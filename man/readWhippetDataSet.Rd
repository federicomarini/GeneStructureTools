% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/readWhippetFiles.R
\name{readWhippetDataSet}
\alias{readWhippetDataSet}
\title{Import whippet results files as a whippetDataSet}
\usage{
readWhippetDataSet(filePath = ".")
}
\arguments{
\item{filePath}{path to whippet output files}
}
\value{
whippetDataSet
}
\description{
Import whippet results files as a whippetDataSet
}
\examples{
whippetFiles <- system.file("extdata","whippet/",
package = "GeneStructureTools")
wds <- readWhippetDataSet(whippetFiles)
}
\seealso{
Other whippet data processing: \code{\link{coordinates}},
  \code{\link{diffSplicingResults}},
  \code{\link{filterWhippetEvents}},
  \code{\link{formatWhippetEvents}},
  \code{\link{junctions}}, \code{\link{readCounts}},
  \code{\link{readWhippetDIFFfiles}},
  \code{\link{readWhippetJNCfiles}},
  \code{\link{readWhippetPSIfiles}},
  \code{\link{whippetTranscriptChangeSummary}}
}
\author{
Beth Signal
}
