
load("C:/Users/lilia/Desktop/Applied Environmental Statistics/AES1 Online 2_5/AES1 Online 2_5/AES1 Data/iron.rda")
attach(iron)
AnovaModel.1 <- lm(fe ~ mining*rocktype, data=iron, contrasts=list(mining 
  ="contr.Sum", rocktype ="contr.Sum"))
Anova(AnovaModel.1)
with(iron, (tapply(fe, list(mining, rocktype), mean, na.rm=TRUE))) # means
with(iron, (tapply(fe, list(mining, rocktype), sd, na.rm=TRUE))) 
  # std. deviations
xtabs(~ mining + rocktype, data=iron) # counts
qqPlot(residuals(AnovaModel.1))
shapiro.test(residuals(AnovaModel.1))
perm.fact.test(fe,mining,rocktype,perm=10000)
BDM.2way(fe,rocktype,mining)

