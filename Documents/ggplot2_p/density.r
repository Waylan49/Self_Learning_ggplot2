ggplot(airquality, aes(x=Ozone))+geom_density(outline.type = "full", fill="gold1",
                                              color="goldenrod2")+
    scale_x_continuous(name="Mean ozone in \nparts per billion",
                       breaks=seq(0, 200, 25))+
    scale_y_continuous(name="Density")+ggtitle("Density plot of mean ozone")+
  geom_vline(xintercept=mean(airquality$Ozone, na.rm=TRUE), color="red", linetype="dashed")+
  facet_grid(.~Month)
  

##Volcano Plot, replace geom_density with stat_density-----1
library(RColorBrewer)
data1<-data %>% filter(Month %in% c("July", "August", "September"))

ggplot(data1, aes(x=Ozone))+stat_density(aes(ymax=..density..,
                                             ymin=-..density.., fill=Month),
                                         geom="ribbon", position="identity")+
  facet_grid(.~Month)+coord_flip()+
  scale_fill_manual(values = c("#76F4F2", "#E7ACF4", "#A5E89C"))

##Volcano Plot, replace geom_density with stat_density-----2
ggplot(data1, aes(x=Ozone))+stat_density(aes(ymax=..density..,
                                             ymin=-..density.., fill=Month),
                                         geom="ribbon", position="identity")+
  facet_grid(.~Month)+coord_flip()+
  scale_fill_brewer(palette = "Spectral")


## Multiple Density Plot, adjust title, legend box size, and color
ggplot(data)+theme_bw()+
  geom_density(aes(x=Ozone, fill=Month), alpha=0.6)+
  scale_x_continuous(name = "Mean ozone in\nparts per billion", 
                     breaks = seq(0, 200, 25),
                     limits=c(0, 200))+
  scale_y_continuous(name = "Density")+
  ggtitle("Density plot of mean ozone")+
  scale_fill_brewer(palette = "Accent")+
  theme(plot.title=element_text(hjust=0.5),
        legend.position = "bottom", legend.direction = "horizontal",
        legend.box.margin = margin(-12, 0, 0, 0))
  

