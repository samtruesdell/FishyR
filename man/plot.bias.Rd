% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Francis_bomb_functions.R
\name{plot.bias}
\alias{plot.bias}
\title{Bomb Radiocarbobn Plots}
\usage{
\method{plot}{bias}(bias.out, type)
}
\arguments{
\item{bias.out}{list containing output from function
\code{\link[FishyR]{calc.bias}}}
}
\value{
A plot.
}
\description{
\code{plot.bias} plots outpout from function \code{\link[FishyR]{calc.bias}}
}
\examples{
data(snapper)
snapper.red <- snapper[snapper$C14year >= 1955 & snapper$C14year <= 1972, ]
data(bluenose)
bluenose.red <- bluenose[bluenose$C14year >= 1955 &
  bluenose$C14year <= 1972, ]
bluenose.red <- bluenose.red[bluenose.red$C14 >= -506 &
  bluenose.red$C14 <= 94.0, ]
out <- calc.bias(snapper.red, bluenose.red, nsim = 5000, plot.type = 0,
  x = "C14year", y = "C14", age = "age", cy = "catch.year",
  age.err = "age.err", s.age = "samp.age", y.err = "C14.err",
  bias.range = c(-50, 50), bias.step = 1)
plot.bias(out, type = 1)
plot.bias(out, type = 2)
}
\seealso{
Other Bomb Radiocarbon Analyses: \code{\link{calc.bias}},
  \code{\link{calc.h}}, \code{\link{closest.pt}},
  \code{\link{get.h.from.bias}}, \code{\link{get.nearest}},
  \code{\link{get.ref.line}}, \code{\link{sim.hdist}}
}

