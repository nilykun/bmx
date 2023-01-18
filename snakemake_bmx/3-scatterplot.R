library(ggplot2)

data1<-read.csv("data/BMX_clean.csv")

p<-ggplot(data1,aes(BMXWT,BMXHT)) +
    geom_point(size=1,colour="#70B4CF") +
    geom_smooth(method=lm,colour="#3A73AD",se=F) +
    labs(x="Weight(kg)",y="Standing Height(cm)")
ggsave("plot/3-scatterplot.png",p)