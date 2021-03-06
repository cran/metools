% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gmline.R
\name{gm.line}
\alias{gm.line}
\title{Line Graphic Model}
\usage{
gm.line(
  data,
  ncolx,
  ncoly,
  ntimes,
  title,
  xlab = NULL,
  ylab = NULL,
  div100 = FALSE,
  percent = FALSE,
  fontsize = 0,
  lwdserie = 1.5,
  cserie = "white",
  clines = "white",
  ctext = "white",
  cbackground = "#141414"
)
}
\arguments{
\item{data}{a dataframe}

\item{ncolx}{number of x column in data frame}

\item{ncoly}{number of y column in data frame}

\item{ntimes}{number of observations to plot (count by tail)}

\item{title}{title of plot}

\item{xlab}{x axis label}

\item{ylab}{y axis label}

\item{div100}{If data percent are not in decimal format set TRUE.}

\item{percent}{If TRUE, y axis in percent (default=F)}

\item{fontsize}{change size of all words in graphic (only numbers)}

\item{lwdserie}{size of serie}

\item{cserie}{change color of serie}

\item{clines}{color of lines in graphic}

\item{ctext}{color of words in graphic}

\item{cbackground}{color of graphic background}
}
\value{
Return a graphic.
}
\description{
gm.line make a line plot. Graphic models function family do graphic creation
easy, is recommended for new programers, they have less and easyful parameters then p.line but
the graphic customize is more limited.
}
\examples{
v=data.frame("x"=seq(from=1,to=4,by=1),"y"=c(5,3,7,2))

gm.line(v,1,2,title="Simple example",ntimes=3)

}
