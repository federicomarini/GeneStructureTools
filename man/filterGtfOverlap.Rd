% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/OverlapFunctions.R
\name{filterGtfOverlap}
\alias{filterGtfOverlap}
\title{Filter a GTF overlap to remove exons when exon is annotated as a CDS/UTR}
\usage{
filterGtfOverlap(gtf.from)
}
\arguments{
\item{gtf.from}{GRanges object of the GTF produced from an overlap}
}
\value{
GRanges object of the GTF with redundant exons removed
}
\description{
Filter a GTF overlap to remove exons when exon is annotated as a CDS/UTR
}
\examples{
gtfFile <- system.file("extdata","example_gtf.gtf",
package = "GeneStructureTools")
gtf <- rtracklayer::import(gtfFile)
overlap <- as.data.frame(GenomicRanges::findOverlaps(gtf[which(gtf$type=="CDS")[1]], gtf))
table(gtf$type[overlap$subjectHits])
overlapFiltered <- filterGtfOverlap(gtf[overlap$subjectHits])
table(overlapFiltered$type[overlap$subjectHits])
overlap <- as.data.frame(GenomicRanges::findOverlaps(gtf[which(
gtf$transcript_type=="retained_intron")[1]],gtf))
table(gtf$type[overlap$subjectHits])
overlapFiltered <- filterGtfOverlap(gtf[overlap$subjectHits])
table(overlapFiltered$type[overlap$subjectHits])
}
\seealso{
Other gtf manipulation: \code{\link{UTR2UTR53}},
  \code{\link{addBroadTypes}},
  \code{\link{exonsToTranscripts}},
  \code{\link{removeDuplicateTranscripts}},
  \code{\link{removeSameExon}},
  \code{\link{reorderExonNumbers}}
}
\author{
Beth Signal
}
