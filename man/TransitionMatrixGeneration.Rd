% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/TransitionMatrixGeneration.R
\name{TransitionMatrixGeneration}
\alias{TransitionMatrixGeneration}
\title{"TransitionMatrixGeneration"}
\usage{
TransitionMatrixGeneration(original_methyl, terminal_methyl)
}
\arguments{
\item{original_methyl}{The original methylation level of each CpG/gene/region.}

\item{terminal_methyl}{The paired terminal methylation level of each CpG/gene/region.}
}
\value{
observation_matrix The transition ratio matrix(\eqn{5 \times 5}) from the original state to the terminal state.
DNA methylation level was classed to five classes (class1:0;class1:1/4;class1:1/2;class1:3/4;class5:1).
The ratio of each class change to others are described as blows:
	\tabular{cccccc}{
		\tab original_class1 \tab original_class2 \tab original_class3 \tab original_class4 \tab original_class5\cr
		terminal_class1 \tab a1 \tab b1 \tab c1 \tab d1 \tab e1\cr
		terminal_class2 \tab a2 \tab b2 \tab c2 \tab d2 \tab e2\cr
		terminal_class3 \tab a3 \tab b3 \tab c3 \tab d3 \tab e3\cr
		terminal_class4 \tab a4 \tab b4 \tab c4 \tab d4 \tab e4\cr
		terminal_class5 \tab a5 \tab b5 \tab c5 \tab d5 \tab e5\cr
	}
	# observation_matrix[1,1](a1) is the ratio of original_class1 to terminal_class1,observation_matrix[1,2](b1) is the ratio of original_class2 to terminal_class1 and so on
	# observation_matrix[2,1](a2) is the ratio of original_class1 to terminal_class2,observation_matrix[2,2](b2) is the ratio of original_class2 to terminal_class2 and so on
	# The sum of the ratio that original_class1 change to 5 classes should be 1. That is a1+a2+a3+a4+a5=1.
}
\description{
Generate the transition matrix from the original DNA methylation level to the terminal DNA methylation level which is suitable for TMParameterEstimation().
}
\details{
.
}
\examples{
# Let's simulate the original DNA methylation level vector and the terminal one.
set.seed(0)
original_methyl <- runif(10000, min = 0, max = 1)
set.seed(1)
terminal_methyl <- runif(10000, min = 0, max = 1)
TransitionMatrixGeneration(original_methyl,terminal_methyl)
}
\references{
\cite{Zhao, C. et.al.(2019). A DNA methylation state transition model reveals the programmed epigenetic heterogeneity in pre-implantation embryos. Under revision.}
}
\concept{MethylTransition}
