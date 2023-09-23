summarized_date <- quartet %>%
  group_by(set) %>%
  summarise(mean(x),mean(y),sd(x),sd(y),cor(x,y))



ggplot(datasaurus_dozen,aes(x=x,y=y,colour=dataset))+geom_point()+theme_void()+theme(legend.position = "none")+facet_wrap(~dataset,ncol=3)

a <- c(1,6,2,80,08,9)
b <- c(1,5,2,80,08,9)
bias(a,b)