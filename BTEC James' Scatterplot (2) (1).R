install.packages("ggplot2")
install.packages("dplyr")
install.packages("ggExtra")
library("ggplot2")
library(dplyr)
library(ggExtra)

data("diamonds")
p<-diamonds %>%
  ggplot(aes(price, carat, color= color))+
  geom_jitter()+labs(title = "James Harrington's Scatterplot!",
                     subtitle = "BTEC 400",
                     x="Price", y="Carat Weight")+
  theme(plot.title = element_text(hjust = .5), plot.subtitle=  element_text(hjust = .5),
        axis.text.x = element_text(angle = 70, vjust = 1, hjust=1))+#Brought the titles to the center and chaged and rotated the dollar interals to make it more clear and readable.
  scale_x_continuous(breaks= seq(0,20000, 1000), labels = scales::dollar_format())#adds dollar signs to x axis
Individuals<-p+facet_wrap(~diamonds$color)#Use facet_wrap to see each color individually on the scatterplot. 
Individuals
p
#tried geom_jitter instead of geom_point but there is still so many points
#that it doesn't noticeably help with over plotting. 

### NEW STUFF I'VE LEARNED BELOW
ggMarginal(p,type = "histogram", color= "blue")
#The ggMarginal function is an awesome function to use to show the density of data. Here I use a histogram
#However a better option would be to use a density plot which will show the density of each color
ggMarginal(p,groupColour = TRUE, groupFill = TRUE) 
#Shows the density of carats according to color and price!GroupFill fills the area underneath.
#The smaller and cheaper the diamond is the higher the supply. 
#The ggMargianl function is really helping the eye determine the peaks and lows of density.
#This all makes since because diamonds with a heavier carat rate are more rare which increase their cost.
#groupColour = TRUE,
#groupFill = TRUE)
#the densigram type is the best of both worlds, but it is not suitable for this graph because it makes it no longer easy to read.
