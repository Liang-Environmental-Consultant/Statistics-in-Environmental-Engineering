
load("C:/Users/lilia/Desktop/Applied Environmental Statistics/AES1 Online 2_5/AES1 Online 2_5/AES1 Data/arsenic.rda")
Boxplot( ~ conc, data=arsenic, id=list(method="y"))
with(arsenic, (t.test(conc, alternative='two.sided', mu=0.0, 
  conf.level=.95)))
with(arsenic, (t.test(conc, alternative='less', mu=0.0, conf.level=.95)))
attach(arsenic)
Bootmean(conc)
bootUCL(conc)
intrvls(conc)
intrvls(conc, LOG=1)
intrvls(conc, npred=3, LOG=1)
NPpred(conc)
Tolerance(conc, cover=85)
Tolerance(conc,cover=90)
bootTOLupper(conc,cover=85)

