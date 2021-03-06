% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ExonSkipping.R
\name{findExonContainingTranscripts}
\alias{findExonContainingTranscripts}
\title{Given the location of a whole spliced in exon, find transcripts which can splice out this exon}
\usage{
findExonContainingTranscripts(input, exons, variableWidth = 0,
  findIntrons = FALSE, transcripts)
}
\arguments{
\item{input}{whippetDataSet generated from \code{readWhippetDataSet()} or a Granges of exon coordinates}

\item{exons}{GRanges object made from a GTF containing exon coordinates}

\item{variableWidth}{How many nts overhang is allowed for finding matching exons
(default = 0, i.e. complete match)}

\item{findIntrons}{Find transcripts where the event occurs within the intron?}

\item{transcripts}{GRanges object made from a GTF containing transcript coordinates
(only required if findIntrons=TRUE)}
}
\value{
data.frame with all overlapping exons
}
\description{
Given the location of a whole spliced in exon, find transcripts which can splice out this exon
}
\examples{
whippetFiles <- system.file("extdata","whippet/",
package = "GeneStructureTools")
wds <- readWhippetDataSet(whippetFiles)
wds <- filterWhippetEvents(wds)

gtf <- rtracklayer::import(system.file("extdata","example_gtf.gtf",
package = "GeneStructureTools"))
exons <- gtf[gtf$type=="exon"]
transcripts <- gtf[gtf$type=="transcript"]
g <- BSgenome.Mmusculus.UCSC.mm10::BSgenome.Mmusculus.UCSC.mm10

wds.exonSkip <- filterWhippetEvents(wds, eventTypes="CE",psiDelta = 0.2)
exons.exonSkip <- findExonContainingTranscripts(wds.exonSkip, exons,
variableWidth=0, findIntrons=FALSE, transcripts)

exonFromGRanges <- exons[exons$exon_id == "ENSMUSE00001271768.1"]
exons.exonSkip <- findExonContainingTranscripts(exonFromGRanges, exons,
variableWidth=0, findIntrons=FALSE, transcripts)
}
\seealso{
Other whippet splicing isoform creation: \code{\link{addIntronInTranscript}},
  \code{\link{findIntronContainingTranscripts}},
  \code{\link{findJunctionPairs}},
  \code{\link{replaceJunction}},
  \code{\link{skipExonInTranscript}}
}
\author{
Beth Signal
}
