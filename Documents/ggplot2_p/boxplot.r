ggplot(data)+theme_bw()+
  geom_boxplot(aes(x=Month, y=Ozone, fill=Month), alpha=0.6,
                          outlier.shape = 21, outlier.fill="red",
               notch = TRUE)+
  scale_x_discrete(name = "Month")+
  scale_y_continuous(name = "Mean ozone in \nparts per billion",
                     breaks=seq(0, 200, 25))+
  ggtitle("Boxplot of mean ozone by month")+
  scale_fill_brewer(palette = "Set3")+
  theme(legend.position = "bottom", legend.direction = "horizontal")+
  theme(plot.title=element_text(hjust=0.5),
        legend.box.margin = margin(-10, 0, 0, 0))
  
  
  
##geom_jitter(aes(x=Month, y=Ozone))
  



ggplot(data)+geom_boxplot(aes(x=Month, y=Ozone, fill=newfac))

ggplot(data2)+geom_boxplot(aes(x=Month, y=Ozone, fill=Month))+
  facet_grid(.~tempf)+theme(legend.position = "bottom",
                            legend.direction = "horizontal",
                            legend.key = element_rect(color="black",
                                                      fill="#C3F9F7"),
                            legend.box.margin = margin(-10,0,0,0))+
  ggtitle("Boxplot of mean ozone by month")+
  theme(plot.title=element_text(hjust=0.5))
