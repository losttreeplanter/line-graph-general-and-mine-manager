#### line graph based on https://ase.tufts.edu/bugs/guide/assets/R%20Graphics%20Cookbook.pdf


library(ggplot2)

library(readr)
wages <- read_csv("C:/Users/mmccrae/Downloads/General Manager and Mine Manager wage salary - Sheet1 (2).csv")

#wages$yeardatetwo <- as.Date(wages$yeardatetwo, "%Y")

#wages$yeardatetwo

wages$year



ggplot(wages, aes(x = year, y=generalmanager)) +
  geom_line() +
  geom_point(size=4, shape=21, fill="white") +
  #ylim(1, max(wages$generalmanager)) +
  #scale_x_discrete(breaks=c("2006", "2007","2008","2009","2010","2011","2012","2013","2014","2015","2016","2017", "2018")) +
  #scale_x_continuous(name="year", labels=wages$year))+
  ggtitle("China CO2 Emissions, Yearly") +
  labs(x="", y="CO2 Emissions\n(metric tonnes per capita)") +
  theme(axis.title.y = element_text(size=14, family="Trebuchet MS", color="#666666")) +
  theme(axis.text = element_text(size=16, family="Trebuchet MS")) +
  theme(plot.title = element_text(size=26, family="Trebuchet MS", face="bold", hjust=0, color="#666666"))



