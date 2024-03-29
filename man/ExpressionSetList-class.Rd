\name{ExpressionSetList-class}
\docType{class}
\alias{ExpressionSetList-class}
\alias{[,ExpressionSetList-method}
\alias{coerce,list,ExpressionSetList-method}
\alias{dim,ExpressionSetList-method}
\alias{featureNames,ExpressionSetList-method}
\alias{geneCenter,ExpressionSetList-method}
\alias{lapply,ExpressionSetList-method}
\alias{nSamples}
\alias{nSamples,ExpressionSetList-method}
\alias{nrow,ExpressionSetList-method}
\alias{pData,ExpressionSetList-method}
\alias{pca,ExpressionSetList-method}
\alias{phenotype,ExpressionSetList,character-method}
\alias{standardizeSamples,ExpressionSetList-method}
\alias{studyCenter,ExpressionSetList-method}
\alias{zeroNu,ExpressionSetList-method}

\title{A class for containing a list of ExpressionSets}

\description{Each element in the list must be a valid
  \code{ExpressionSet}.  The \code{featureNames} must be identical for
  each \code{ExpressionSet}. }
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("ExpressionSetList", ...)}.
}
\section{Slots}{
  \describe{
    \item{\code{.Data}:}{Object of class \code{"list"}}
  }
}
\section{Extends}{

  Class \code{"\linkS4class{list}"}, from data part.
  Class \code{"\linkS4class{vector}"}, by class "list", distance 2.
  Class \code{\link[Biobase]{class.AssayData}}, by class "list", distance 2.

}
\section{Methods}{
  \describe{


\item{"["}{\code{signature(x = "ExpressionSetList")} Subsets each
  \code{ExpressionSet} element in the list.}


\item{coerce}{\code{signature(from = "list", to = "ExpressionSetList")}
  Coerces a list of \code{ExpressionSet} objects to an object of class
  \code{ExpressionSetList}. The \code{validityMethod} for the
  \code{ExpressionSetList} class will return an error if the
  \code{featureNames} for each \code{ExpressionSet} are not identical.}

\item{dim}{\code{signature(x="ExpressionSetList")} applies \code{dim} to each
  element of the list. }

\item{featureNames}{\code{signature(object = "ExpressionSetList")}
  Accessor for the \code{featureNames}}

\item{geneCenter}{\code{signature(object = "ExpressionSetList")} See
  \code{\link{geneCenter}}}

\item{lapply}{\code{signature(object="ExpresssionSetList")} Coerces
  instance of ExpressionSetList to a list and does lapply on the list.
  Returns an object of class ExpressionSetList}

\item{nSamples}{\code{signature(x = "ExpressionSetList")} Numerical
  vector giving the number of samples in each \code{ExpressionSet}}

\item{nrow}{\code{signature(x = "ExpressionSetList")} Numerical: number
  of features or genes}

\item{pData}{\code{signature(object = "ExpressionSetList")} returns a
  list of \code{data.frames}.  The elements of the list correspond to
  the studies in the \code{ExpressionSetList} object.}

%\item{.pca}{\code{signature(object = "ExpressionSetList")} Runs
%  principal components to generate cross-study summary scores of
%  differential expression in multiple studies.  Not meant to be called
%  directly.  See \code{\link{xsScores}}.}
\item{phenotype}{\code{signature(object="ExpressionSetList",
    varLabel="character")}
  Accessor for the clinical variable. Assumes that the clinical variable
  has the same name in each study.
  }

\item{standardizeSamples}{\code{signature(object = "ExpressionSetList")}
  See \code{\link{standardizeSamples}}
}

\item{studyCenter}{\code{signature(object = "ExpressionSetList")}
  See \code{\link{studyCenter}}
}

\item{zeroNu}{\code{signature(object = "ExpressionSetList")}
  See \code{\link{zeroNu}}. }
}
}

\author{R. Scharpf}

\seealso{
  \code{\link{XdeMcmc-class}}, \code{\link{XdeParameter-class}}
}
\examples{
	showClass("ExpressionSetList")
	data(expressionSetList)
}
\keyword{classes}
