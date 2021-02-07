ggplot(data)+theme_bw()+
  geom_point(aes(x=Day, y=Ozone, fill=Month, size=Wind), pch=21)+
  scale_x_continuous(breaks=seq(1, 31, 5))+
  ggtitle("Air Quality in New York by Day")+
  labs(x="Day of the Month", y="Ozone (ppb)")+
  scale_fill_manual(values = c("cyan", "darkviolet", "brown1"))+
  scale_size(range=c(1, 8))+
  theme(legend.position = "bottom", legend.direction = "horizontal",
        legend.key = element_rect(fill="azure"),
        legend.box = "vertical", legend.spacing.y = unit(0, "char"),
        legend.justification = c(0,0),
        legend.margin = margin(c(0, 0, 0, 0)),
        legend.key.size = unit(0.2, "cm"))+
  theme(panel.border = element_blank(), panel.grid.minor = element_blank())

        