##Add a normal distribution plot on the histogram
ggplot(airquality)+geom_histogram(aes(x=Ozone, y=..density..))+
  stat_function(fun=dnorm, color="red",
            args=list(mean=mean(airquality$Ozone, na.rm=TRUE), 
                      sd=sd(airquality$Ozone, na.rm=TRUE)))


##Normal Histogram
ggplot(airquality)+geom_histogram(aes(x=Ozone, fill=..count..), 
                                  binwidth = 5)+
  scale_x_continuous(breaks=seq(0, 200, 25), 
                     name="Mean ozone in \nparts per billion")+
  scale_y_continuous(breaks=seq(0, 20, 2.5),
                     name="Count")+
  ggtitle("Frequency histogram of mean ozone")+
  scale_fill_gradient(low="#E684ED", high="#F100A3")



##Adjust Version
ggplot(airquality)+theme_bw()+
  geom_histogram(aes(x=Ozone, y=..density.., fill=..density..))+
  ggtitle("Frequency histogram of mean ozone")+
  scale_x_continuous(breaks=seq(0, 200, 25), 
                     name="Mean ozone in \nparts in billion")+
  scale_y_continuous(breaks=seq(0, 0.04, 0.01),
                     name="Percent")+
  scale_fill_gradient(low="#F59BD8", high="#F40000")+
  theme(legend.position = "bottom", panel.border = element_blank(),
        axis.line = element_line(colour = "black"),
        panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        legend.key.width = unit(1.2, "cm"), legend.spacing.x = unit(0.8, "cm"),
        legend.justification = c(-1, 0))+
  geom_vline(xintercept = mean(airquality$Ozone, na.rm=TRUE), col="blue", size=1,
             linetype="dashed")+
  geom_text(aes(x=mean(airquality$Ozone, na.rm=TRUE), y=0.02, label="Mean"))
 

##Multiple Version
data1<-data %>% filter(Month %in% c("August", "September"))
ggplot(data1, aes(x=Ozone))+theme_bw()+
  geom_histogram(aes(y=..density.., fill=..density..))+
  theme(legend.position = "bottom", legend.direction = "horizontal",
        legend.key.size = unit(1, "cm"), legend.justification = c(-0.3,0),
        legend.key.height = unit(0.4, "cm"), legend.spacing.x = unit(1.5, "char"))+
  ggtitle("Frequency histogram of mean ozone")+
  scale_x_continuous(breaks=seq(0, 200, 25),
                     name="Mean ozone in \nparts per billion")+
  scale_y_continuous(name="Density")+
  theme(panel.border = element_blank(), panel.grid.minor = element_blank(),
        axis.line=element_line(colour = "black", size=0.8))+
  facet_wrap(~Month, scales="free")
  


