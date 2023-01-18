library(ggplot2)

data1<-read.csv("data/BMX_clean.csv")

cnames<-c("BMXWT","BMXHT","BMXBMI","BMXLEG","BMXCALF","BMXARML","BMXARMC","BMXWAIST","BMXTHICR","BMXTRI","BMXSUB")

df<-data.frame()

for(i in c(2,4:9)) {
  dat<-data.frame(id=1:nrow(data1))
  dat$BMX<-rep(cnames[i],nrow(data1))
  dat$value<-data1[,i+3]
  dat$BMI_cat<-data1$BMI_cat
  df<-rbind(df,dat)
}

p<-ggplot(df,aes(x=value)) +
    geom_density(aes(colour=BMX),alpha=0.3) +
    labs(x="cm",title="Kernel Density Plot of BMX")
ggsave("plot/5-densityplot.png",p)
