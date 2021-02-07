ggplot(data)+theme_bw()+
  geom_line(aes(x=year, y=export, col=product), size=1.5)+
  theme(legend.position = "bottom", legend.direction = "horizontal")+
  scale_x_continuous(breaks=seq(2006, 2014, 1))+
  scale_y_continuous(breaks=seq(0, 16000, 2000))+
  ggtitle("Composition of Exports to China ($)")+
  labs(x="Year", y="USD Million")+
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.border = element_blank(), axis.line = element_line(size=0.8, colour = "black"))+
  geom_text(aes(x=year, y=export+450, label=export), size=3.2)
  