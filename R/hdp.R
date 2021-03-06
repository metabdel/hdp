#' @import methods
#' @importFrom stats rbeta runif
NULL

.onUnload <- function(libpath){
  library.dynam.unload("hdp", libpath)
}

#' Fake categorical count data
#'
#' Fake categorical count data with 10 samples and 6 categories.
#' Generated from two underlying categorical data distributions with a
#' different average mixture ratio in the first five samples from the last
#' five samples.
#'
#' @format A numeric count matrix with 10 rows and 6 columns
"example_data_hdp"


#' Fake categorical count data with priors
#'
#' Fake categorical count data with 100 samples and 10 categories.
#' Generated from four underlying categorical data distributions.
#' Two of the underlying components are available as known prios
#' in \code{\link{example_known_priors}}.
#'
#' @format A numeric count matrix with 100 rows and 10 columns
"example_data_hdp_prior"


#' Example known priors
#'
#' Two example prior components for the example data
#' \code{\link{example_data_hdp_prior}}. 10 rows (one per data category) and
#' 2 columns (one per prior component, each sums to 1).
#'
#' @format A numeric matrix with 10 rows and 2 columns.
"example_known_priors"


#' HDP posterior samples on example data with priors
#'
#' Four independent posterior sampling chains for the dataset
#' \code{\link{example_data_hdp_prior}}, conditioning on two known prior components
#' provided in \code{\link{example_known_priors}}.
#'
#' @format hdpSampleMulti object
"hdp_p"


#' Cancer mutation count data
#'
#' Mutation count data from SomaticCancerAlterations package.
#' Categories are the 96 base substitution types defined by local trinucleotide
#' context, and the samples include 100 lung adenocarcinomas, 100 ovarian serous
#' carcinomas, and 100 skin cutaneous melanomas.
#' Data is derived from TCGA exome-sequencing studies.
#'
#' @format A matrix of mutation counts with 300 rows (one per cancer sample)
#'  and 96 columns (one per mutation category)
"mut_count"


#' Posterior sampling chains with cancer mutation data
#'
#' Four independent HDP sampling chains with data from
#' SomaticCancerAlterations package, saved to \code{\link{mut_count}}.
#' Categories are the 96 base substitution types defined by local trinucleotide
#' content, and the samples include 100 lung adenocarcinomas, 100 ovarian serous
#' carcinomas, and 100 skin cutaneous melanomas.
#' Data is derived from TCGA exome-sequencing studies.
#' Each sample was assigned to a unique child DP node, with one parent DP node per
#' cancer type, and one grandparent DP node at the top level.
#' Each chain initialised with 10 clusters, then run 5000 burn-in iterations
#' before collecting 50 posterior samples with 200 iterations between each.
#'
#' @format A hdpSampleMulti object with 200 posterior samples, 50 from each chain
"mut_example_multi"


#' Pposterior sampling chains on lung data, conditioned on prior sigs
#'
#' Four independent HDP sampling chains with lung adenocarcinoma data
#' (first 100 rows of \code{\link{mut_count}}), conditioning on a library of
#' 30 known prior signatures from https://cancer.sanger.ac.uk/cosmic/signatures (COSMIC v84).
#'
#' @format A hdpSampleMulti object with 200 posterior samples, 50 from each chain
"luad_multi"
