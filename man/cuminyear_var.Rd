% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cuminyear_var.R
\name{cuminyear_var}
\alias{cuminyear_var}
\title{Accumulated variation in year}
\usage{
cuminyear_var(data, coldate, colnum, div100 = FALSE)
}
\arguments{
\item{data}{a dataframe}

\item{coldate}{number of date column}

\item{colnum}{number of values column}

\item{div100}{divide data by 100, use if data is not fraction}
}
\value{
Return a dataframe.
}
\description{
cuminyear_var calculates an accumulated variation in year of a rate,
 _var means the data must be a percentage variation.
 Data must be start in january, if you data don't start in january and you need
 use this values, consider complete the previous months with 0.
}
\examples{
v=data.frame(
"Date"=c(seq.Date(as.Date("2018-01-01"),as.Date("2019-12-01"),by='month'))
,"Value"=c(rep(0.02,12),rep(0.03,12)))
cuminyear_var(v,coldate=1,colnum=2)

v=data.frame(
"Date"=c('january','february','march')
,"Value"=c('1\%','3\%','2\%'))
v=colpct2num(v,start=2,div100=TRUE)
v[[1]]=month2num(v[[1]])
v[[1]]=paste('2018',v[[1]],'01',sep="-")
v[[1]]=as.Date(v[[1]])
cuminyear_var(v,coldate=1,colnum=2)

}
