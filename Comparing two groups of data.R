
load("C:/Users/lilia/Desktop/Applied Environmental Statistics/AES1 Online 2_5/AES1 Online 2_5/AES1 Data/moly2.rda")
attach(MOLY2)
Boxplot(MOLY~LOCAT, data=MOLY2, id=list(method="y"))
t.test(log(MOLY)~LOCAT, alternative='less', conf.level=.95, var.equal=FALSE, 
  data=MOLY2)
library(nortest, pos=30)
downgradMoly <- subset(MOLY2, subset=LOCAT=="DOWNGRAD")
normalityTest(~MOLY, test="shapiro.test", data=downgradMoly)
with(downgradMoly, tapply(MOLY, LOCAT, median, na.rm=TRUE))
wilcox.test(MOLY ~ LOCAT, alternative="less", data=downgradMoly)
with(MOLY2, tapply(MOLY, LOCAT, median, na.rm=TRUE))
wilcox.test(MOLY ~ LOCAT, alternative="less", data=MOLY2)
MOLY2$ObsNumber <- 1:16
MOLY2$variable <- with(MOLY2, log(MOLY))
MOLY2$lnMoly <- with(MOLY2, log(MOLY))
t.test(lnMoly~LOCAT, alternative='two.sided', conf.level=.95, 
  var.equal=FALSE, data=MOLY2)
t.test(lnMoly~LOCAT, alternative='less', conf.level=.95, var.equal=FALSE, 
  data=MOLY2)
attach(MOLY2)
perm2(MOLY, LOCAT, alt="less")

