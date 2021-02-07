ggplot(data)+theme_bw()+
  geom_area(aes(x=year, y=export, fill=product),
            position=position_stack(reverse=TRUE))+
  theme(legend.position = "bottom", legend.title = element_blank())+
  scale_x_continuous(breaks=seq(2006, 2014, 1))+
  scale_y_continuous(breaks=seq(0, 20000, 2000))+
  ggtitle("Composition of Exports to China ($)")+
  labs(x="Year", y="USD Million")+
  theme(axis.line = element_line(size=0.8, color="black"),
        panel.border = element_blank(), panel.grid.minor = element_blank())
  