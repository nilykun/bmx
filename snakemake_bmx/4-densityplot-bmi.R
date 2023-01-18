library(ggplot2)

data1<-read.csv("data/BMX_clean.csv")

p<-ggplot(data1) +
    geom_density(aes(x=BMXBMI),colour="#70B4CF",alpha=0.3,show.legend=T) +
    labs(title="Kernel Density Plot of BMI")
ggsave("plot/4-densityplot.png",p)