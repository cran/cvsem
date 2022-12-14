% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cvgather.R
\name{cvgather}
\alias{cvgather}
\title{Gather \code{lavan} model objects into a list}
\usage{
cvgather(...)
}
\arguments{
\item{...}{Names of \code{lavaan} model objects}
}
\value{
Named list
}
\description{
Gather \code{lavaan} model objects to be compared via CV. Function returns a named list.
}
\examples{

example_data <- lavaan::HolzingerSwineford1939
colnames(example_data) <- c("id", "sex", "ageyr", "agemo", 'school', "grade",
"visualPerception", "cubes", "lozenges", "comprehension",
"sentenceCompletion", "wordMeaning", "speededAddition",
"speededCounting", "speededDiscrimination")

model1 <- 'comprehension ~ sentenceCompletion + wordMeaning'

model2 <- 'comprehension ~ wordMeaning
           sentenceCompletion ~ wordMeaning

           comprehension ~~ 0.5*wordMeaning'

model_list <- cvgather(model1, model2)

}
\author{
philippe
}
