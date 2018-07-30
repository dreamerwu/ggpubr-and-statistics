#reference: https://www.r-bloggers.com/add-p-values-and-significance-levels-to-ggplots/
library("ggpubr")

#plot point and calculate t.test
p=ggboxplot(data,x="Gene",y="TEAD1",add="jitter")
p+stat_compare_means(method="anova/t.test")
compare_means(TEAD1~Gene,data,method="t.test") #calculate multiple group statistics
# Change the default order of items
ggboxplot(df, "x="Gene",y="TEAD1",
   order = c("order#1", "order#2", "order#3"))
# change axis labels:
 p+xlab("xlab")+ylab("ylab")
# change axis range:
          +ylim(c(0,1.2))
          

#plot point-line
ggline(data,x="x axis",y="y axis",color="group",add="mean_se",xlab="x axis title",ylab="y axis title",ylim=c(min,max))




