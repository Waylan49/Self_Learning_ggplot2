library(dplyr)
data<-data %>% group_by(year) %>% mutate(pos=cumsum(export)-0.5*export)


ggplot(data)+theme_bw()+
  geom_bar(aes(x=year, y=export, fill=product), stat="identity",
           position=position_stack(reverse=TRUE))+
  theme(legend.position = "bottom", legend.title = element_blank())+
  geom_text(aes(x=year, y=pos, label=export), size=3.2)+
  scale_x_continuous(breaks=seq(2006, 2014, 1))+
  scale_y_continuous(breaks=seq(0, 20000, 2000))+
  ggtitle("Composition of Exports to China ($)")+
  labs(x="Year", y="USD Million")