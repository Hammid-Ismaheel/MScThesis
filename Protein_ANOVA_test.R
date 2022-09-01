#Now Join the data
prot2012<-read.csv("C:/Users/HP/Desktop/My WUR MSc Thesis/Final Work/Transformed Data/Protein Data/2012-2016/avg_prot2012.csv")
part2012<-read.csv("C:/Users/HP/Desktop/My WUR MSc Thesis/Final Work/RIVM DATASETS/RIVM Dataset 2012-2016/CSV/participant.csv", sep="|")

View(prot2012)


#Now re-code the educational level 
as.factor(part2012$edu)-> part2012$edu
levels(part2012$edu) <- list('1'=c('1','2','3'), '2'=c('4', '5'), '3'= c('6', '7'))

#Check the educational level 
part2012$edu

#Now full join the participants and FCS data frames 
library(tidyverse)
library(dplyr)
full_join(prot2012, part2012) -> new_data

new_age_prot12<-subset(new_data, new_data$age>=19 & new_data$age<=69)

View(new_age_prot12)


new_age_prot12$new_age<-cut(new_age_prot12$age,
              breaks=c(19, 30, 50, 69),
              labels=c('19-30', '31-50', '51-69'))


View(new_age_prot12$new_age)

as.factor(new_age_prot12$sex)->new_age_prot12$sex



#Check the normality 
hist(new_age_prot12$prot)
hist(new_age_prot12$prot_ani)
hist(new_age_prot12$prot_veg)


#Transform the Data 
log(new_age_prot12$prot) ->new_age_prot12$prot
log(new_age_prot12$prot_ani) -> new_age_prot12$prot_ani
log(new_age_prot12$prot_veg) -> new_age_prot12$prot_veg

hist(new_age_prot12$prot_ani)
hist(new_age_prot12$prot_veg)


#Conduct ANOVA 
model <- aov(prot ~ sex * age * edu, data=new_age_prot12)
summary(model)


model2 <- aov(prot_ani ~ sex * age * edu, data=new_age_prot12)
summary(model2)

model3 <- aov(prot_veg ~ sex * age * edu, data=new_age_prot12)
summary(model3)




###Now for 2007-2010
prot2007<-read.csv("C:/Users/HP/Desktop/My WUR MSc Thesis/Final Work/Transformed Data/Protein Data/2007-2010/avg_prot2012.csv")
part2007<-read.csv("C:/Users/HP/Desktop/My WUR MSc Thesis/Final Work/RIVM DATASETS/RIVM Dataset 2007-2010/CSV/participant.csv", sep="|")


#Now re-code the educational level 
as.factor(part2007$edu)-> part2007$edu
levels(part2007$edu) <- list('1'=c('1','2','3'), '2'=c('4', '5'), '3'= c('6', '7'))



#Now full join the participants and FCS data frames 
library(tidyverse)
part2007<-part2007%>%
  rename(sex=SEX)

part2007<-part2007%>%
  rename(p_id=P_ID)

full_join(prot2007, part2007) -> new_data2

#Rename the ID 


new_age_prot7<-subset(new_data2, new_data2$age>=19 & new_data2$age<=69)


new_age_prot7$new_age<-cut(new_age_prot7$age,
                            breaks=c(19, 30, 50, 69),
                            labels=c('19-30', '31-50', '51-69'))


as.factor(new_age_prot7$sex)->new_age_prot7$sex

#Transform the Data 
log(new_age_prot7$prot) ->new_age_prot7$prot
log(new_age_prot7$prot_ani) -> new_age_prot7$prot_ani
log(new_age_prot7$prot_veg) -> new_age_prot7$prot_veg

#Check the normality 
hist(new_age_prot7$prot)
hist(new_age_prot7$prot_ani)
hist(new_age_prot7$prot_veg)


#Conduct ANOVA 
modell <- aov(prot ~ sex * age * edu, data=new_age_prot7)
summary(modell)


modell2 <- aov(prot_ani ~ sex * age * edu, data=new_age_prot7)
summary(modell2)

modell3 <- aov(prot_veg ~ sex * age * edu, data=new_age_prot7)
summary(modell3)


#Check the normality 
hist(new_age_prot7$prot)
hist(new_age_prot7$prot_ani)
hist(new_age_prot7$prot_veg)


#Transform the Data 
hist(log(new_age_prot7$prot))
hist(log(new_age_prot7$prot_ani))
hist(log(new_age_prot7$prot_veg))



#Now Get back to the computation 

prot2003<-read.csv("C:/Users/HP/Desktop/My WUR MSc Thesis/Final Work/Transformed Data/Protein Data/2003/n2_prot2003.csv")
View(fcs2003)
prot2003["X"]<-NULL
part2003<-read.csv("C:/Users/HP/Desktop/My WUR MSc Thesis/Final Work/RIVM DATASETS/RIVM Young Adults/CSV/participant.csv", sep="|")
part2003
View(part2003)


new_age_prot7$new_age
