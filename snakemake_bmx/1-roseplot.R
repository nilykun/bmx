library(ggplot2)

data1<-read.csv("data/BMX_clean.csv")

f<-factor(data1$BMI_cat,ordered=T,levels=c("Underweight","Normal Range","Overweight","Obese I","Obese II","Obese III"))
data1<-data.frame(data1[,1:14],BMI_cat=f)

p<-ggplot(data1,aes(x=BMI_cat)) +
    geom_bar(width=1,fill=c("#DBE7F4","#BBD1E9","#9CBCDE","#7CA6D3","#5E90C7","#427BB8")) +
    coord_polar(theta="x",start=0) +
    geom_text(aes(label=after_stat(count)),stat="count",vjust="outward",hjust="outward",colour="black",show.legend=T) +
    labs(title="Rose Plot of BMI categories")
ggsave("plot/1-roseplot.png",p)