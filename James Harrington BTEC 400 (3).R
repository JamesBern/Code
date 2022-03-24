library(ggplot2)
ggplot(diamonds,aes(x=color)) + geom_bar()
#1) What type of chart does the command in line 2 make?
# barchart
ggplot(diamonds,aes(y=color)) + geom_bar()#----> ggplot(diamonds,aes(x=color)) + geom_bar()+coord_flip()
#2) What does changing the aesthetic argument from the x to the y axis do in this type of plot?
#The bar chart fliped horizontally to the y axis. It is the exact same thing as using th coord_flip function, which is the way I noermally 
ggplot(diamonds,aes(x=color))+geom_bar(fill="purple")
#3) What did the fill argument do in line 8's code?
#fills the bar plot bars with the color purple
ggplot(diamonds,aes(x=color,fill=cut)) + geom_bar()
#4) What did the fill argument do in line 11's code?
#gave different colors depending on the quality cut og the diamonds
#5) Why did fill do something different in line 8 vs line 11?
#line 8's fill was a universal color while line 11's fill was categorical because it was based on the "cut" variable, since there are different "cuts" there are multiple colors.
ggplot(diamonds,aes(x=color, fill=cut)) + geom_bar(position = position_dodge())
#6) What does the position argument allow us to do in a box plot?
#It allows us tget a better visual of the actual count amount within each "color" type of diamond in regard to the qualities of cut.

