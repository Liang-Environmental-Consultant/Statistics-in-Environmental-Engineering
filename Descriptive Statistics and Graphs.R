
setwd("C:/Users/lilia/Desktop/Applied Environmental Statistics")
setwd("C:/Users/lilia/Desktop/Applied Environmental Statistics/AES1 Online 2_5/AES1 Online 2_5/AES1 Data")
coli <- 
  readXL("C:/Users/lilia/Desktop/Applied Environmental Statistics/AES1 Online 2_5/AES1 Online 2_5/AES1 Data/coli.xlsx",
   rownames=FALSE, header=TRUE, na="", sheet="coli_xl", stringsAsFactors=TRUE)
library(abind, pos=31)
library(e1071, pos=32)
numSummary(coli[,"fecoli", drop=FALSE], statistics=c("mean", "sd", "IQR", 
  "quantiles"), quantiles=c(0,.25,.5,.75,1))
Boxplot( ~ fecoli, data=coli, id=list(method="y"))
with(coli, qqPlot(fecoli, dist="norm", id=list(method="y", n=2, 
  labels=rownames(coli))))
coli$lncoli <- with(coli, log(fecoli))
numSummary(coli[,"lncoli", drop=FALSE], groups=coli$season, 
  statistics=c("mean", "sd", "IQR", "quantiles"), quantiles=c(0,.25,.5,.75,1))
Boxplot(lncoli~season, data=coli, id=list(method="y"))
with(coli, qqPlot(lncoli, dist="norm", id=list(method="y", n=2, 
  labels=rownames(coli))))
qqPlot(lncoli[season=="FALL"],dist="norm")
attach(coli)
geomean.coli=exp(mean(log(fecoli)))
geomean.coli
