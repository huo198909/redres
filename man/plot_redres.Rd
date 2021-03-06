% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_redres.R
\name{plot_redres}
\alias{plot_redres}
\title{Diagnostic residual plot for linear mixed models}
\usage{
plot_redres(model, type = "raw_cond", xvar = NULL)
}
\arguments{
\item{model}{Model fit using \code{lmer}.}

\item{type}{String identifying type of residual. Default is "raw_cond".
See \code{\link{redres}} for details of available types.}

\item{xvar}{String indicates the variable to be plotted at the x-axis. By default,
the fitted values are plotted on the x-axis. This option allows the user
to choose a different variable to plotted. Any variables used in the
lmer model can be specified.}
}
\value{
A plot of residuals versus fitted values.
}
\description{
Plot of specified residual type versus fitted values for a linear mixed effects model
fitted using \code{lmer}. Use plot to assess whether the assumptions of constant
variance and linear form are adequate.
}
\examples{
# Fit a linear mixed effects model
library(lme4)
fm1 <- lmer(Reaction ~ Days + (Days | Subject), sleepstudy)

# Plot raw conditional residuals by fitted values.
plot_redres(fm1)

# Plot raw conditional residuals by selected variables `Days`.
plot_redres(fm1, xvar = "Days")

# Plot standardized conditional residuals by fitted values.
plot_redres(fm1, type = "std_cond")
}
