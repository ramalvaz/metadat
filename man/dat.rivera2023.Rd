\name{dat.rivera2023}
\docType{data}
\alias{dat.rivera2023}
\title{Comparison of two diagnostic tests for the detection of temporomandibular disorders. A systematic review and meta-analysis}
\description{Studies evaluating the diagnostic accuracy of the IAF and 3Q-TMD instruments based on the reference tests RDC and DC-TMD for the diagnosis of temporomandibular disorders}
\usage{
dat.rivera2023
}
\format{
The data frame contains the following columns:
\tabular{lll}{
\bold{Author} \tab \code{character} \tab study author(s) \cr
\bold{year} \tab \code{integer} \tab year for the study \cr
\bold{Title} \tab \code{character} \tab title for the article  \cr
\bold{DOI} \tab \code{character} \tab Doi for the article \cr
\bold{TP} \tab \code{integer} \tab number for True Positive  \cr
\bold{FP} \tab \code{integer} \tab number for False Positive \cr
\bold{FN} \tab \code{integer} \tab number for False Negative\cr
\bold{TN} \tab \code{integer} \tab number for True Negative \cr
\bold{Sensibility} \tab \code{numeric} \tab Sensibility \cr
\bold{Specificity} \tab \code{numeric} \tab Specificity \cr
\bold{PPV} \tab \code{numeric} \tab Positive Predictive Value \cr
\bold{NPV} \tab \code{numeric} \tab Negative Predictive Value \cr
\bold{Sample.size} \tab \code{integer} \tab Sample Size \cr
\bold{n1} \tab \code{integer} \tab number of people with the disease \cr
\bold{n2} \tab \code{integer} \tab  number of people without the disease\cr
\bold{Prevalence} \tab \code{numeric} \tab Prevalence \cr
\bold{AUC} \tab \code{numeric} \tab Area under the curve \cr
\bold{SampleID} \tab \code{character} \tab SampleID \cr
}  
}
\details{Results  of 10 studies that evaluated the diagnostic accuracy of the IAF and 3Q-TMD instruments based on the reference tests RDC and DC-TMD were included. The search period ranged from 1992 to April 2022 in six electronic databases. Two independent reviewers selected the studies. Risk of bias and applicability were assessed using the QUADAS 2 instrument.}
\source{Rivera, Hugo Daniel; Álvarez-Vaz, Ramón, 2025, "Conjunto de datos de: Comparación de dos pruebas diagnósticas para la detección de trastornos témporomandibulares. Una revisión sistemática y metaanálisis.", \verb{https://doi.org/10.60895/redata/YIEGLZ}, Repositorio de datos abiertos de investigación de Uruguay, V1}
\references{
 Rivera, H.D., Rodríguez, C. I., Álvarez-Vaz, R., Kreiner,M. Comparison of two diagnostic tests for the detection of temporomandibular disorders. A systematic review and meta-analysis. Odontoestomatología, 27(45),1–17.\verb{https://doi.org/10.22592/ode2025n45e338}
}
\author{Álvarez-Vaz, Ramón, \email{ramon.alvarez@fcea.edu.uy}}
\examples{
### copy data into 'dat' and examine data
dat <- dat.rivera2023
dat

\dontrun{

library(mada) # Meta-Analysis of Diagnostic Accuracy
library(meta) # General Package for Meta-Analysis

### Calculate sensitivity
round(dat$TP / dat$n1, 4)
report1<-metaprop(TP, n1, data=dat,
         common=TRUE, random=TRUE,
         studlab=paste(Author, year))
report1
summary(report1)
forest(report1)

### Calculate specificity
round(dat$TN / dat$n2, 4)
report2<-metaprop(TN, n2, data=dat,
         common=TRUE, random=TRUE,
         studlab=paste(Author, year))
summary(report2)
forest(report2)

report3<-metabin(TP, n1, n2-TN, n2, data=dat, sm="OR",common=FALSE, random=TRUE,studlab=paste(Author, year),allstudies=TRUE)
summary(report3)

}
}
\keyword{datasets}
\concept{dentistry}
\concept{temporomandibular disorders}
\concept{sensitivity}
\concept{specificity}
\concept{AUC}
\concept{Diagnostic Odds Ratio}
\section{Concepts}{
   dentistry, temporomandibular disorders, sensitivity, specificity,AUC,Diagnostic Odds Ratio
}
