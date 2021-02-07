ggplot(dt)+geom_point(aes(x=Day, y=Ozone, fill=Temp), pch=21, size=4)+
  scale_x_continuous(breaks=seq(1, 31, 5))+
  ggtitle("Air Quality in New York by Day")+
  labs(x="Day of the Month", y="Ozone (ppb)")+
  scale_fill_continuous(low="#00FDEB", high="#FD00D6")+
  theme(legend.position = "bottom", legend.direction = "horizontal")


ggplot(dt)+theme_bw()+geom_point(aes(x=Day, y=Ozone, fill=Month), pch=21,
                                 size=3)+
  theme(legend.position="bottom", legend.direction = "horizontal")+
  theme(panel.border = element_blank(),
        axis.line=element_line(colour = "black", size=0.8))+
  ggtitle("Air Quality in New York by Day") +
  labs(x = "Day of the month", y = "Ozone (ppb)", fill = "Months")