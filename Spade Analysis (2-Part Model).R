library(openxlsx)
fcs2012<-read.xlsx("C:/Users/HP/Desktop/My WUR MSc Thesis/Final Work/Transformed Data/2012-2016/2-day Consumption/two-day-consumption.xlsx")
part2012<-read.csv("C:/Users/HP/Desktop/My WUR MSc Thesis/Final Work/RIVM DATASETS/RIVM Dataset 2012-2016/CSV/participant.csv", sep="|")


#Load the meats data 
meats2012<-read.csv("C:/Users/HP/Documents/meats_aggregate.csv")
View(meats2012)
offals_game<-read.csv("C:/Users/HP/Documents/offals_meats.csv")




#Now re-code the educational level 
as.factor(part2012$edu)-> part2012$edu
levels(part2012$edu) <- list('1'=c('1','2','3'), '2'=c('4', '5'), '3'= c('6', '7'))

#Check the educational level 
part2012$edu

#Now full join the participants and FCS data frames 
library(tidyverse)
full_join(meats2012, part2012) -> new_data_model
full_join(offals_game, part2012) ->new_data_model2

#Rename the ID 

new_data_model<-new_data_model%>%
  rename(id=p_id)

#Rename the Offal and meats 
new_data_model2<-new_data_model2%>%
  rename(id=p_id)


###Now for 2007-2010
fcs2007<-read.xlsx("C:/Users/HP/Desktop/My WUR MSc Thesis/Final Work/Transformed Data/2007-2010/2-day-consumption.xlsx")
part2007<-read.csv("C:/Users/HP/Desktop/My WUR MSc Thesis/Final Work/RIVM DATASETS/RIVM Dataset 2007-2010/CSV/participant.csv", sep="|")
View(fcs2007)

#Now re-code the educational level 
as.factor(part2007$edu)-> part2007$edu
levels(part2007$edu) <- list('1'=c('1','2','3'), '2'=c('4', '5'), '3'= c('6', '7'))

#Check the educational level 
part2007$edu

#Now full join the participants and FCS data frames 
library(tidyverse)
full_join(fcs2007, part2007) -> new_data2

#Rename the ID 

new_data2<-new_data2%>%
  rename(id=p_id)

part2007<-part2007%>%
  rename(p_id=P_ID)

part2007<-part2007%>%
  rename(sex=SEX)


#Now Get back to the computation 

fcs2003<-read.xlsx("C:/Users/HP/Desktop/My WUR MSc Thesis/Final Work/Transformed Data/2003/2-day-Consumption.xlsx")
View(fcs2003)
fcs2003["X"]<-NULL
part2003<-read.csv("C:/Users/HP/Desktop/My WUR MSc Thesis/Final Work/RIVM DATASETS/RIVM Young Adults/CSV/participant.csv", sep="|")
part2003
View(part2003)


##
#Join the dataframes 
full_join(fcs2003, part2003) ->new_data3

new_data3<-new_data3%>%
  rename(id=p_id)



#Using the 2-PART MODEL TO CLASSIFY AND COMPUTE THE HABITUAL MEAN OF THE PROTEIN CONSUMED... 

library(SPADE.RIVMNwCore)

#Now the offals and games 
f.spade.bootstrap(
FUN = f.spade,
frml.ia = off_game ~ fp(age),
frml.if = off_game ~ cs(age),
data = new_data_model2,
min.age = 19,
max.age = 69,
sex.label = "both",
age.classes = c(19,30, 50, 69),
seed = 100,
n.boot = 3,
weights.name = "w_demog_season_wk_wknd",
spade.output.path = "12_SPADE_OUTPUT")








View(new_data_model2)



#For meats
library(SPADE.RIVMNwCore)
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = meats ~ fp(age),
  frml.if = meats ~ cs(age),
  data = new_data_model,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")


#For fresh meats 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = fresh_meats ~ fp(age),
  frml.if = fresh_meats ~ cs(age),
  data = new_data_model,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

#For Processed meats 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = processed_meats ~ fp(age),
  frml.if = processed_meats ~ cs(age),
  data = new_data_model,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")


#For poultry
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = poultry ~ fp(age),
  frml.if = poultry ~ cs(age),
  data = new_data_model,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")



#Find a way to bring offals and game.... 








#For Beef men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = beef ~ fp(age),
  frml.if = beef ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# Beef Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = beef ~ fp(age),
  frml.if = beef ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

#Beef both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = beef ~ fp(age),
  frml.if = beef ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

#For Pork men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = pork ~ fp(age),
  frml.if = pork ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# Pork Women 
f.spade(
  frml.ia = pork ~ fp(age),
  frml.if = pork ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# Pork both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = pork ~ fp(age),
  frml.if = pork ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")


#For Bread men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = bread ~ fp(age),
  frml.if = bread ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# Bread Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = bread ~ fp(age),
  frml.if = bread ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

#Bread both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = bread ~ fp(age),
  frml.if = bread ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

#For Butter Milk men
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = butter_milk ~ fp(age),
  frml.if = butter_milk ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# Butter_milk Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = butter_milk ~ fp(age),
  frml.if = butter_milk ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

#Butter_milk both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = butter_milk ~ fp(age),
  frml.if = butter_milk ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")


#For Cereals for men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cereals ~ fp(age),
  frml.if = cereals ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# Cereals Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cereals ~ fp(age),
  frml.if = cereals ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

#Cereals both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cereals ~ fp(age),
  frml.if = cereals ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")


#For Cheese Plus 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cheese_plus ~ fp(age),
  frml.if = cheese_plus ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# Cheese Plus Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cheese_plus ~ fp(age),
  frml.if = cheese_plus ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

#Cheese Plus both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cheese_plus ~ fp(age),
  frml.if = cheese_plus ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")


#####Add the cheese men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cheese ~ fp(age),
  frml.if = cheese ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# Cheese Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cheese ~ fp(age),
  frml.if = cheese ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

#Cheese both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cheese ~ fp(age),
  frml.if = cheese ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")


#For Cheese Spread men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cheese_spread ~ fp(age),
  frml.if = cheese_spread ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# Cheese Spread Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cheese_spread ~ fp(age),
  frml.if = cheese_spread ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

#Cheese Spread both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cheese_spread ~ fp(age),
  frml.if = cheese_spread ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

#For Chicken Turkey men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = chicken_turkey ~ fp(age),
  frml.if = chicken_turkey ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# Chicken_turkey  Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = chicken_turkey ~ fp(age),
  frml.if = chicken_turkey ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

#Chicken and Turkey both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = chicken_turkey ~ fp(age),
  frml.if = chicken_turkey ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

#For Drink Yoghurt 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = drink_yoghurt ~ fp(age),
  frml.if = drink_yoghurt ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# Drink Yoghurt Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = drink_yoghurt ~ fp(age),
  frml.if = drink_yoghurt ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

#Drink Yoghurt both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = drink_yoghurt ~ fp(age),
  frml.if = drink_yoghurt ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")


#For Eggs men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = eggs ~ fp(age),
  frml.if = eggs ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# Eggs Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = eggs ~ fp(age),
  frml.if = eggs ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

#Eggs  both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = eggs ~ fp(age),
  frml.if = eggs ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")



#For Fish men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = fish ~ fp(age),
  frml.if = fish ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# Fish Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = fish ~ fp(age),
  frml.if = fish ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# Fish both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = fish ~ fp(age),
  frml.if = fish ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

#For meat and diary substitutes 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = meat_diary_subs ~ fp(age),
  frml.if = meat_diary_subs ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# Meats and Diary Subs Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = meat_diary_subs ~ fp(age),
  frml.if = meat_diary_subs ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

#Meat and Diary subs both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = meat_diary_subs ~ fp(age),
  frml.if = meat_diary_subs ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")


#For meats men
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = meats ~ fp(age),
  frml.if = meats ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# Meats Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = meats ~ fp(age),
  frml.if = meats ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

#Meats  both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = meats ~ fp(age),
  frml.if = meats ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")



#For Milk men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = milk ~ fp(age),
  frml.if = milk ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# For Milk Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = milk ~ fp(age),
  frml.if = milk ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# For Milk both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = milk ~ fp(age),
  frml.if = milk ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")


#For Milk Beverages 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = milk_beverages ~ fp(age),
  frml.if = milk_beverages ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# Milk Beverages Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = milk_beverages ~ fp(age),
  frml.if = milk_beverages ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

#Milk Beverages both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = milk_beverages ~ fp(age),
  frml.if = milk_beverages ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")



#For Nuts and seeds men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = nuts_and_seeds ~ fp(age),
  frml.if = nuts_and_seeds ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# Nuts and Seeds Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = nuts_and_seeds ~ fp(age),
  frml.if = nuts_and_seeds ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

#Nuts and Seeds both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = nuts_and_seeds ~ fp(age),
  frml.if = nuts_and_seeds ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")


#For Other red meats men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = other_red_meats ~ fp(age),
  frml.if = other_red_meats ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# Other Red Meats Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = other_red_meats ~ fp(age),
  frml.if = other_red_meats ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

#Other Red Meats both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = other_red_meats ~ fp(age),
  frml.if = other_red_meats ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")



#For Other White Meats men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = other_white_meats ~ fp(age),
  frml.if = other_white_meats ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# Other White Meats Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = other_white_meats ~ fp(age),
  frml.if = other_white_meats ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

#For Other Whites Meats both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = other_white_meats ~ fp(age),
  frml.if = other_white_meats ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")


#For Poultry Men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = poultry ~ fp(age),
  frml.if = poultry ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# Poultry Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = poultry ~ fp(age),
  frml.if = poultry ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

#Poultry both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = poultry ~ fp(age),
  frml.if = poultry ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")


#For Processed Meats men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = processed_meats ~ fp(age),
  frml.if = processed_meats ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 200,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# Processed Meats women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = processed_meats ~ fp(age),
  frml.if = processed_meats ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 200,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

#Processed Meats both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = processed_meats ~ fp(age),
  frml.if = processed_meats ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")


#For Pulse men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = Pulse ~ fp(age),
  frml.if = Pulse ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# Pulse Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = pulse ~ fp(age),
  frml.if = pulse ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

#Pulse both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = pulse ~ fp(age),
  frml.if = pulse ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")


#For Semi-Skimmed Yoghurt 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = semi_skimmed_yoghurt ~ fp(age),
  frml.if = semi_skimmed_yoghurt ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# Semi-Skimmed Yoghurt Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = semi_skimmed_yoghurt ~ fp(age),
  frml.if = semi_skimmed_yoghurt ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# Semi Skimmed Yoghurt both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = semi_skimmed_yoghurt ~ fp(age),
  frml.if = semi_skimmed_yoghurt ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")



#For Skimmed Milk men
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = skimmed_milk ~ fp(age),
  frml.if = skimmed_milk ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# Skimmed Milk Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = skimmed_milk ~ fp(age),
  frml.if = skimmed_milk ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

#Skimmed Milk both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = skimmed_milk ~ fp(age),
  frml.if = skimmed_milk ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")


#For Skimmed Yoghurt men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = skimmed_yoghurt ~ fp(age),
  frml.if = skimmed_yoghurt ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# skimmed Yoghurt Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = skimmed_yoghurt ~ fp(age),
  frml.if = skimmed_yoghurt ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

#Skimmed Yoghurt both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = skimmed_yoghurt ~ fp(age),
  frml.if = skimmed_yoghurt ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")


#For Veal and Pork men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = veal_and_pork ~ fp(age),
  frml.if = veal_and_pork ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# For Veal and Pork Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = veal_and_pork ~ fp(age),
  frml.if = veal_and_pork ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

#Veal and Pork both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = veal_and_pork ~ fp(age),
  frml.if = veal_and_pork ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")


#For Whole Milk men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = whole_milk ~ fp(age),
  frml.if = whole_milk ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# Whole Milk Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = whole_milk ~ fp(age),
  frml.if = whole_milk ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

#Whole Milk both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = whole_milk ~ fp(age),
  frml.if = whole_milk ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")


#For Whole Yoghurt 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = whole_yoghurt ~ fp(age),
  frml.if = whole_yoghurt ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# For Whole Yoghurt Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = whole_yoghurt ~ fp(age),
  frml.if = whole_yoghurt ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

#Whole Yoghurt both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = whole_yoghurt ~ fp(age),
  frml.if = whole_yoghurt ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")


#For Yoghurt Men
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = yoghurt ~ fp(age),
  frml.if = yoghurt ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# Yoghurt Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = yoghurt ~ fp(age),
  frml.if = yoghurt ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

#Yoghurt both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = yoghurt ~ fp(age),
  frml.if = yoghurt ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

#For Mushroom men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = mushroom ~ fp(age),
  frml.if = mushroom ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# Mushroom Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = mushroom ~ fp(age),
  frml.if = mushroom ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")

# Mushroom both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = mushroom ~ fp(age),
  frml.if = mushroom ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12_SPADE_OUTPUT")



###*****************For 2007-2010 dataset *****************#
#The dataset is changing from new_data to new_data2 and it is being saved in another directory

#For Beef men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = beef ~ fp(age),
  frml.if = beef ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "SPADE_OUTPUT")

# Beef Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = beef ~ fp(age),
  frml.if = beef ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

#Beef both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = beef ~ fp(age),
  frml.if = beef ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

#For Bread men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = bread ~ fp(age),
  frml.if = bread ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

#For Pork men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = pork ~ fp(age),
  frml.if = pork ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

# Pork Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = pork ~ fp(age),
  frml.if = pork ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

# Pork both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = pork ~ fp(age),
  frml.if = pork ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")


# Bread Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = bread ~ fp(age),
  frml.if = bread ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

#Bread both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = bread ~ fp(age),
  frml.if = bread ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

#For Butter Milk men
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = butter_milk ~ fp(age),
  frml.if = butter_milk ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

# Butter_milk Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = butter_milk ~ fp(age),
  frml.if = butter_milk ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

#Butter_milk both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = butter_milk ~ fp(age),
  frml.if = butter_milk ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")


#For Cereals for men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cereals ~ fp(age),
  frml.if = cereals ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

# Cereals Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cereals ~ fp(age),
  frml.if = cereals ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

#Cereals both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cereals ~ fp(age),
  frml.if = cereals ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

#####Add the cheese men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cheese ~ fp(age),
  frml.if = cheese ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

# Cheese Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cheese ~ fp(age),
  frml.if = cheese ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

#Cheese both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cheese ~ fp(age),
  frml.if = cheese ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

#For Cheese Plus 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cheese_plus ~ fp(age),
  frml.if = cheese_plus ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

# Cheese Plus Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cheese_plus ~ fp(age),
  frml.if = cheese_plus ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

#Cheese Plus both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cheese_plus ~ fp(age),
  frml.if = cheese_plus ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

#For Cheese Spread men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cheese_spread ~ fp(age),
  frml.if = cheese_spread ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

# Cheese Spread Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cheese_spread ~ fp(age),
  frml.if = cheese_spread ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

#Cheese Spread both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cheese_spread ~ fp(age),
  frml.if = cheese_spread ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

#For Chicken Turkey men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = chicken_turkey ~ fp(age),
  frml.if = chicken_turkey ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

# Chicken_turkey  Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = chicken_turkey ~ fp(age),
  frml.if = chicken_turkey ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

#Chicken and Turkey both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = chicken_turkey ~ fp(age),
  frml.if = chicken_turkey ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

#For Drink Yoghurt 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = drink_yoghurt ~ fp(age),
  frml.if = drink_yoghurt ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

# Drink Yoghurt Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = drink_yoghurt ~ fp(age),
  frml.if = drink_yoghurt ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

#Drink Yoghurt both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = drink_yoghurt ~ fp(age),
  frml.if = drink_yoghurt ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")


#For Eggs men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = eggs ~ fp(age),
  frml.if = eggs ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

# Eggs Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = eggs ~ fp(age),
  frml.if = eggs ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

#Eggs  both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = eggs ~ fp(age),
  frml.if = eggs ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")



#For Fish men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = fish ~ fp(age),
  frml.if = fish ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

# Fish Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = fish ~ fp(age),
  frml.if = fish ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

# Fish both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = fish ~ fp(age),
  frml.if = fish ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

#For meat and diary substitutes 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = meat_diary_subs ~ fp(age),
  frml.if = meat_diary_subs ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

# Meats and Diary Subs Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = meat_diary_subs ~ fp(age),
  frml.if = meat_diary_subs ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

#Meat and Diary subs both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = meat_diary_subs ~ fp(age),
  frml.if = meat_diary_subs ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")


#For meats men
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = meats ~ fp(age),
  frml.if = meats ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

# Meats Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = meats ~ fp(age),
  frml.if = meats ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

#Meats  both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = meats ~ fp(age),
  frml.if = meats ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")



#For Milk men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = milk ~ fp(age),
  frml.if = milk ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

# For Milk Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = milk ~ fp(age),
  frml.if = milk ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

# For Milk both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = milk ~ fp(age),
  frml.if = milk ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")


#For Milk Beverages 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = milk_beverages ~ fp(age),
  frml.if = milk_beverages ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

# Milk Beverages Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = milk_beverages ~ fp(age),
  frml.if = milk_beverages ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

#Milk Beverages both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = milk_beverages ~ fp(age),
  frml.if = milk_beverages ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")



#For Nuts and seeds men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = nuts_and_seeds ~ fp(age),
  frml.if = nuts_and_seeds ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

# Nuts and Seeds Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = nuts_and_seeds ~ fp(age),
  frml.if = nuts_and_seeds ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

#Nuts and Seeds both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = nuts_and_seeds ~ fp(age),
  frml.if = nuts_and_seeds ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")


#For Other red meats men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = other_red_meats ~ fp(age),
  frml.if = other_red_meats ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

# Other Red Meats Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = other_red_meats ~ fp(age),
  frml.if = other_red_meats ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

#Other Red Meats both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = other_red_meats ~ fp(age),
  frml.if = other_red_meats ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")



#For Other White Meats men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = other_white_meats ~ fp(age),
  frml.if = other_white_meats ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

# Other White Meats Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = other_white_meats ~ fp(age),
  frml.if = other_white_meats ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

#For Other Whites Meats both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = other_white_meats ~ fp(age),
  frml.if = other_white_meats ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")


#For Poultry Men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = poultry ~ fp(age),
  frml.if = poultry ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

# Poultry Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = poultry ~ fp(age),
  frml.if = poultry ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

#Poultry both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = poultry ~ fp(age),
  frml.if = poultry ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")


#For Processed Meats men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = processed_meats ~ fp(age),
  frml.if = processed_meats ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

# Processed Meats women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = processed_meats ~ fp(age),
  frml.if = processed_meats ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

#Processed Meats both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = processed_meats ~ fp(age),
  frml.if = processed_meats ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")


#For Pulse men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = Pulse ~ fp(age),
  frml.if = Pulse ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

# Pulse Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = pulse ~ fp(age),
  frml.if = pulse ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

#Pulse both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = pulse ~ fp(age),
  frml.if = pulse ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")


#For Semi-Skimmed Yoghurt 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = semi_skimmed_yoghurt ~ fp(age),
  frml.if = semi_skimmed_yoghurt ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

# Semi-Skimmed Yoghurt Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = semi_skimmed_yoghurt ~ fp(age),
  frml.if = semi_skimmed_yoghurt ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

# Semi Skimmed Yoghurt both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = semi_skimmed_yoghurt ~ fp(age),
  frml.if = semi_skimmed_yoghurt ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")



#For Skimmed Milk men
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = skimmed_milk ~ fp(age),
  frml.if = skimmed_milk ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

# Skimmed Milk Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = skimmed_milk ~ fp(age),
  frml.if = skimmed_milk ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

#Skimmed Milk both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = skimmed_milk ~ fp(age),
  frml.if = skimmed_milk ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")


#For Skimmed Yoghurt men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = skimmed_yoghurt ~ fp(age),
  frml.if = skimmed_yoghurt ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

# skimmed Yoghurt Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = skimmed_yoghurt ~ fp(age),
  frml.if = skimmed_yoghurt ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

#Skimmed Yoghurt both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = skimmed_yoghurt ~ fp(age),
  frml.if = skimmed_yoghurt ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")


#For Veal and Pork men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = veal_and_pork ~ fp(age),
  frml.if = veal_and_pork ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

# For Veal and Pork Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = veal_and_pork ~ fp(age),
  frml.if = veal_and_pork ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

#Veal and Pork both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = veal_and_pork ~ fp(age),
  frml.if = veal_and_pork ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")


#For Whole Milk men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = whole_milk ~ fp(age),
  frml.if = whole_milk ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

# Whole Milk Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = whole_milk ~ fp(age),
  frml.if = whole_milk ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

#Whole Milk both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = whole_milk ~ fp(age),
  frml.if = whole_milk ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")


#For Whole Yoghurt 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = whole_yoghurt ~ fp(age),
  frml.if = whole_yoghurt ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

# For Whole Yoghurt Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = whole_yoghurt ~ fp(age),
  frml.if = whole_yoghurt ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

#Whole Yoghurt both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = whole_yoghurt ~ fp(age),
  frml.if = whole_yoghurt ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")


#For Yoghurt Men
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = yoghurt ~ fp(age),
  frml.if = yoghurt ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

# Yoghurt Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = yoghurt ~ fp(age),
  frml.if = yoghurt ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")


# Yoghurt Both
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = yoghurt ~ fp(age),
  frml.if = yoghurt ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")


#Mushroom both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = mushroom ~ fp(age),
  frml.if = mushroom ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")


#For the mushroom men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = mushroom ~ fp(age),
  frml.if = mushroom ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

# Mushroom Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = mushroom ~ fp(age),
  frml.if = mushroom ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")

# Mushroom both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = mushroom ~ fp(age),
  frml.if = mushroom ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7_SPADE_OUTPUT")


######****************2003 Datasets ****************#############


#For Beef men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = beef ~ fp(age),
  frml.if = beef ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

# Beef Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = beef ~ fp(age),
  frml.if = beef ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

#Beef both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = beef ~ fp(age),
  frml.if = beef ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

#For Pork men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = pork ~ fp(age),
  frml.if = pork ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

# Pork Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = pork ~ fp(age),
  frml.if = pork ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

# Pork both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = pork ~ fp(age),
  frml.if = pork ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")


#For Bread men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = bread ~ fp(age),
  frml.if = bread ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

# Bread Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = bread ~ fp(age),
  frml.if = bread ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

#Bread both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = bread ~ fp(age),
  frml.if = bread ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

#For Butter Milk men
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = butter_milk ~ fp(age),
  frml.if = butter_milk ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

# Butter_milk Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = butter_milk ~ fp(age),
  frml.if = butter_milk ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

#Butter_milk both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = butter_milk ~ fp(age),
  frml.if = butter_milk ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")


#For Cereals for men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cereals ~ fp(age),
  frml.if = cereals ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

# Cereals Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cereals ~ fp(age),
  frml.if = cereals ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

#Cereals both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cereals ~ fp(age),
  frml.if = cereals ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")


#For Cheese Plus 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cheese_plus ~ fp(age),
  frml.if = cheese_plus ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")




# Cheese Plus Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cheese_plus ~ fp(age),
  frml.if = cheese_plus ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

#Cheese Plus both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cheese_plus ~ fp(age),
  frml.if = cheese_plus ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")


###Add the Cheese men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cheese ~ fp(age),
  frml.if = cheese ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")



# Cheese Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cheese ~ fp(age),
  frml.if = cheese ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

#Cheese Plus both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cheese ~ fp(age),
  frml.if = cheese ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")


#For Cheese Spread men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cheese_spread ~ fp(age),
  frml.if = cheese_spread ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

# Cheese Spread Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cheese_spread ~ fp(age),
  frml.if = cheese_spread ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

#Cheese Spread both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = cheese_spread ~ fp(age),
  frml.if = cheese_spread ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

#For Chicken Turkey men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = chicken_turkey ~ fp(age),
  frml.if = chicken_turkey ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

# Chicken_turkey  Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = chicken_turkey ~ fp(age),
  frml.if = chicken_turkey ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

#Chicken and Turkey both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = chicken_turkey ~ fp(age),
  frml.if = chicken_turkey ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

#For Drink Yoghurt 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = drink_yoghurt ~ fp(age),
  frml.if = drink_yoghurt ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

# Drink Yoghurt Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = drink_yoghurt ~ fp(age),
  frml.if = drink_yoghurt ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

#Drink Yoghurt both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = drink_yoghurt ~ fp(age),
  frml.if = drink_yoghurt ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")


#For Eggs men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = eggs ~ fp(age),
  frml.if = eggs ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

# Eggs Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = eggs ~ fp(age),
  frml.if = eggs ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

#Eggs  both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = eggs ~ fp(age),
  frml.if = eggs ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")



#For Fish men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = fish ~ fp(age),
  frml.if = fish ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

# Fish Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = fish ~ fp(age),
  frml.if = fish ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

# Fish both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = fish ~ fp(age),
  frml.if = fish ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

#For meat and diary substitutes 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = meat_diary_subs ~ fp(age),
  frml.if = meat_diary_subs ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

# Meats and Diary Subs Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = meat_diary_subs ~ fp(age),
  frml.if = meat_diary_subs ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

#Meat and Diary subs both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = meat_diary_subs ~ fp(age),
  frml.if = meat_diary_subs ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")


#For meats men
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = meats ~ fp(age),
  frml.if = meats ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

# Meats Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = meats ~ fp(age),
  frml.if = meats ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

#Meats  both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = meats ~ fp(age),
  frml.if = meats ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")



#For Milk men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = milk ~ fp(age),
  frml.if = milk ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

# For Milk Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = milk ~ fp(age),
  frml.if = milk ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

# For Milk both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = milk ~ fp(age),
  frml.if = milk ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")


#For Milk Beverages 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = milk_beverages ~ fp(age),
  frml.if = milk_beverages ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

# Milk Beverages Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = milk_beverages ~ fp(age),
  frml.if = milk_beverages ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

#Milk Beverages both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = milk_beverages ~ fp(age),
  frml.if = milk_beverages ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")



#For Nuts and seeds men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = nuts_and_seeds ~ fp(age),
  frml.if = nuts_and_seeds ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

# Nuts and Seeds Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = nuts_and_seeds ~ fp(age),
  frml.if = nuts_and_seeds ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

#Nuts and Seeds both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = nuts_and_seeds ~ fp(age),
  frml.if = nuts_and_seeds ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")


#For Other red meats men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = other_red_meats ~ fp(age),
  frml.if = other_red_meats ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

# Other Red Meats Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = other_red_meats ~ fp(age),
  frml.if = other_red_meats ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

#Other Red Meats both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = other_red_meats ~ fp(age),
  frml.if = other_red_meats ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")



#For Other White Meats men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = other_white_meats ~ fp(age),
  frml.if = other_white_meats ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

# Other White Meats Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = other_white_meats ~ fp(age),
  frml.if = other_white_meats ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

#For Other Whites Meats both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = other_white_meats ~ fp(age),
  frml.if = other_white_meats ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")


#For Poultry Men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = poultry ~ fp(age),
  frml.if = poultry ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

# Poultry Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = poultry ~ fp(age),
  frml.if = poultry ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

#Poultry both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = poultry ~ fp(age),
  frml.if = poultry ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")


#For Processed Meats men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = processed_meats ~ fp(age),
  frml.if = processed_meats ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

# Processed Meats women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = processed_meats ~ fp(age),
  frml.if = processed_meats ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

#Processed Meats both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = processed_meats ~ fp(age),
  frml.if = processed_meats ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")


#For Pulse men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = Pulse ~ fp(age),
  frml.if = Pulse ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

# Pulse Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = pulse ~ fp(age),
  frml.if = pulse ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

#Pulse both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = pulse ~ fp(age),
  frml.if = pulse ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")


#For Semi-Skimmed Yoghurt 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = semi_skimmed_yoghurt ~ fp(age),
  frml.if = semi_skimmed_yoghurt ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

# Semi-Skimmed Yoghurt Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = semi_skimmed_yoghurt ~ fp(age),
  frml.if = semi_skimmed_yoghurt ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

# Semi Skimmed Yoghurt both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = semi_skimmed_yoghurt ~ fp(age),
  frml.if = semi_skimmed_yoghurt ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")



#For Skimmed Milk men
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = skimmed_milk ~ fp(age),
  frml.if = skimmed_milk ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

# Skimmed Milk Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = skimmed_milk ~ fp(age),
  frml.if = skimmed_milk ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

#Skimmed Milk both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = skimmed_milk ~ fp(age),
  frml.if = skimmed_milk ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")


#For Skimmed Yoghurt men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = skimmed_yoghurt ~ fp(age),
  frml.if = skimmed_yoghurt ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

# skimmed Yoghurt Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = skimmed_yoghurt ~ fp(age),
  frml.if = skimmed_yoghurt ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

#Skimmed Yoghurt both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = skimmed_yoghurt ~ fp(age),
  frml.if = skimmed_yoghurt ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")


#For Veal and Pork men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = veal_and_pork ~ fp(age),
  frml.if = veal_and_pork ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

# For Veal and Pork Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = veal_and_pork ~ fp(age),
  frml.if = veal_and_pork ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

#Veal and Pork both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = veal_and_pork ~ fp(age),
  frml.if = veal_and_pork ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")


#For Whole Milk men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = whole_milk ~ fp(age),
  frml.if = whole_milk ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

# Whole Milk Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = whole_milk ~ fp(age),
  frml.if = whole_milk ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

#Whole Milk both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = whole_milk ~ fp(age),
  frml.if = whole_milk ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")


#For Whole Yoghurt 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = whole_yoghurt ~ fp(age),
  frml.if = whole_yoghurt ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

# For Whole Yoghurt Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = whole_yoghurt ~ fp(age),
  frml.if = whole_yoghurt ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

#Whole Yoghurt both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = whole_yoghurt ~ fp(age),
  frml.if = whole_yoghurt ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")


#For Yoghurt Men
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = yoghurt ~ fp(age),
  frml.if = yoghurt ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

# Yoghurt Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = yoghurt ~ fp(age),
  frml.if = yoghurt ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

#Yoghurt both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = yoghurt ~ fp(age),
  frml.if = yoghurt ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

#For Mushroom men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = mushroom ~ fp(age),
  frml.if = mushroom ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

# Mushroom Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = mushroom ~ fp(age),
  frml.if = mushroom ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")

# Mushroom both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = mushroom ~ fp(age),
  frml.if = mushroom ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3_SPADE_OUTPUT")






