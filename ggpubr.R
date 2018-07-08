#reference: https://www.r-bloggers.com/add-p-values-and-significance-levels-to-ggplots/
library("ggpubr")
p=ggboxplot(data,x="Gene",y="TEAD1",add="jitter")
p+stat_compare_means(method="anova/t.test")
compare_means(TEAD1~Gene,data,method="t.test") #calculate multiple group statistics


