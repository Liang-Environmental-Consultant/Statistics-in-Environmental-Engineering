
load("C:/Users/lilia/Desktop/Applied Environmental Statistics/AES1 Online 2_5/AES1 Online 2_5/AES1 Data/above_below.rda")
load("C:/Users/lilia/Desktop/Applied Environmental Statistics/AES1 Online 2_5/AES1 Online 2_5/AES1 Data/above_below.rda")
attach(above_below)
head(above_below)
Boxplot(CONC~ABV_BLW, data=above_below, id=list(method="y"))
with(above_below, tapply(CONC, ABV_BLW, median, na.rm=TRUE))
wilcox.test(CONC ~ ABV_BLW, alternative="less", data=above_below)
with(above_below, tapply(CONC, ABV_BLW, median, na.rm=TRUE))
wilcox.test(CONC ~ ABV_BLW, alternative='less', exact=FALSE, correct=TRUE, 
  data=above_below)
load("C:/Users/lilia/Desktop/Applied Environmental Statistics/AES1 Online 2_5/AES1 Online 2_5/AES1 Data/moly2.rda")
attach(MOLY2)
Boxplot(MOLY~LOCAT, data=MOLY2, id=list(method="y"))
molyUpgrad <- subset(MOLY2, subset=LOCAT=="upgrad")
attach(molyUpgrad)
with(molyUpgrad, qqPlot(MOLY, dist="norm", id=list(method="y", n=2, 
  labels=rownames(molyUpgrad))))
normalityTest(~MOLY, test="shapiro.test", data=molyUpgrad)
molyDowngrad <- subset(MOLY2, subset=LOCAT=="DOWNGRAD")
with(molyDowngrad, qqPlot(MOLY, dist="norm", id=list(method="y", n=2, 
  labels=rownames(molyDowngrad)), groups=LOCAT))


