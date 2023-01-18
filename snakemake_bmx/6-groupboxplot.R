library(gplots)

data1<-read.csv("data/BMX_clean.csv")

f<-factor(data1$BMI_cat,ordered=T,levels=c("Underweight","Normal Range","Overweight","Obese I","Obese II","Obese III"))
data1<-data.frame(data1[,1:14],BMI_cat=f)

png("plot/6-boxplot.png",width=1200,height=800,res=80)

p<-boxplot2(data=data1,BMXWT~BMI_cat,top=T,varwidth=T,main="Boxplot of Weight",
            col=c("#DBE7F4","#BBD1E9","#9CBCDE","#7CA6D3","#5E90C7","#427BB8"))

dev.off()