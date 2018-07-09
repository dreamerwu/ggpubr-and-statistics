#reference: https://www.r-bloggers.com/add-p-values-and-significance-levels-to-ggplots/
library("ggpubr")

#plot point and calculate t.test
p=ggboxplot(data,x="Gene",y="TEAD1",add="jitter")
p+stat_compare_means(method="anova/t.test")
compare_means(TEAD1~Gene,data,method="t.test") #calculate multiple group statistics

#plot point-line
ggline(data,x="x axis",y="y axis",color="group",add="mean_se",xlab="x axis title",ylab="y axis title",ylim=c(min,max))




