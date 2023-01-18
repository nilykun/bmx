library(ggplot2)

data1<-read.csv("data/BMX_clean.csv")

f<-factor(data1$BMI_cat,ordered=T,levels=c("Underweight","Normal Range","Overweight","Obese I","Obese II","Obese III"))
data1<-data.frame(data1[,1:14],BMI_cat=f)

cnames<-c("BMXWT","BMXHT","BMXBMI","BMXLEG","BMXCALF","BMXARML","BMXARMC","BMXWAIST","BMXTHICR","BMXTRI","BMXSUB")

df<-data.frame()

for(i in c(2,4:9)) {
  dat<-data.frame(id=1:nrow(data1))
  dat$BMX<-rep(cnames[i],nrow(data1))
  dat$value<-data1[,i+3]
  dat$BMI_cat<-data1$BMI_cat
  df<-rbind(df,dat)
}

p<-ggplot(df,aes(x=value,group=BMI_cat)) +
    geom_density(aes(colour=BMI_cat,fill=BMI_cat),alpha=0.3) +
    facet_grid(BMX~.) +
    labs(title="Kernel Density Plot of Bmx grouped by BMI Categories")
ggsave("plot/7-groupdensityplot.png",p)
