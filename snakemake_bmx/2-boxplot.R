library(gplots)
library(ggplot2)

data1<-read.csv("data/BMX_clean.csv")

png("plot/2-boxplot.png",width=1200,height=600,res=80)

boxplot2(data1[,4:14],main="Boxplot of BMX Data",
         col=c("#3AA258","#3AA468","#3AA77A","#3AA98C","#3AAC9F",
        "#3AAAAE","#3A9AB1","#3A8AB3","#3A79B6","#3A68B8","#1D3256"))

dev.off()