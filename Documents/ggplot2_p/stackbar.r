library(scales)
data<-data %>% group_by(year) %>% mutate(pos1=cumsum(percentage)-0.5*percentage)


ggplot(data)+theme_bw()+
  geom_bar(aes(x=year, y=percentage, fill=product),
                      stat="identity",
                      position=position_stack(reverse=TRUE))+
  theme(legend.position="bottom", legend.title = element_blank())+
  geom_text(aes(x=year, y=pos1, label=paste(
    percentage, "%", sep="")), size=3.2)+
  ggtitle("Composition of Exports to China (%)")+
  labs(x="Year", y="USD Million")+
  scale_y_continuous(labels = dollar_format(prefix="", suffix="%"))+
  theme(panel.border = element_blank(),axis.line=element_line(
    color="black", size=0.8))