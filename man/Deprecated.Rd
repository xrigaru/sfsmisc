\name{Deprecated}% <<< would like "special name": don't check \arguments{}
\title{Deprecated 'sfsmisc' Functions}
% NOTE: ../R/Deprecated.R   must be synchronized with this!
%       ~~~~~~~~~~~~~~~~~
\alias{nna}
\alias{digits}
\alias{digits.v}
\alias{subtit}
\alias{p.triangle}
\alias{p.panelL}
\alias{p.panelS}
\alias{tapply.num}
%------ PLEASE: put \alias{.} here for EACH !
\description{
  These functions are provided for compatibility with older versions of
  the \pkg{sfsmisc} package only, and may be defunct as soon as of the
  next release.
}
\usage{
nna(data)

digits.v(nvec, base = 2, num.bits = 1 + floor(log(max(nvec),base)))
digits(n, base = 10)

subtit(t)

p.panelL(x,y)
p.panelS(x,y,df = 4)

p.triangle(mat, label= "*", text.ecken = rep("",3), dreieck = TRUE)
}
\arguments{
% nna
  \item{data}{vector, matrix or data frame.}
% digits, digits.v
  \item{nvec, n}{non-negative integer (vector).}
  \item{base}{positive integer}
  \item{num.bits}{positive integer}
% subtit():
  \item{t}{character string.}
% p.triangle():
\item{mat}{matrix mit \% A in der 1. Kolonne, \% B in der 2.. (range 0:1)}
\item{label}{text of length \code{mat[,1]} for labeling points.}
\item{text.ecken}{\code{character(3)} text for the three corners.}
\item{dreieck}{logical; if true, draw the triangle border.}
% p.panelL() & p.panelS():
\item{x,y}{panel function arguments: numeric vectors of same length.}
\item{df}{specify (equivalent) degrees of freedom for smoothing spline
  in \code{p.panelS}.}
}
\details{
  \code{nna} was a simpler version of the generic \code{\link{na.omit}}
  function; the latter should be used instead.

  \code{digits.v} and \code{digits} are old vector and \dQuote{scalar}
  versions of \code{\link{digitsBase}}.

  \code{subtit(t)} is really just a convenience abbreviation for
  \code{mtext(t, side = 3, line = 0)} which you should rather use.

  \code{p.panelL} and \code{p.panelS} are simple two-line functions to
  be used as \code{panel} arguments in \code{\link{pairs}} or
  \code{\link{coplot}}.  However, for such simple panels, it's rather
  recommended to use \emph{anonymous} functions, i.e.,
  \code{panel = function(x,y) { ....}} in the call to
  \code{\link{coplot}()} (e.g.).

  \code{p.triangle} is deprecated because package \pkg{vcd} has a much
  more versatile \code{\link[vcd]{ternaryplot}} function.

  \code{tapply.num} has simply be renamed to \code{\link{tapplySimpl}}
  which you should use instead.
}
\keyword{documentation}
