library(openxlsx)
fcs2012<-read.xlsx("C:/Users/HP/Desktop/My WUR MSc Thesis/Final Work/Transformed Data/2012-2016/2-day Consumption/two-day-consumption.xlsx")
part2012<-read.csv("C:/Users/HP/Desktop/My WUR MSc Thesis/Final Work/RIVM DATASETS/RIVM Dataset 2012-2016/CSV/participant.csv", sep="|")


#Now re-code the educational level 
as.factor(part2012$edu)-> part2012$edu
levels(part2012$edu) <- list('1'=c('1','2','3'), '2'=c('4', '5'), '3'= c('6', '7'))

#Check the educational level 
part2012$edu

#Now full join the participants and FCS data frames 
library(tidyverse)
full_join(fcs2012, part2012) -> new_data

#Rename the ID 

new_data<-new_data%>%
  rename(id=p_id)

###Now for 2007-2010
fcs2007<-read.xlsx("C:/Users/HP/Desktop/My WUR MSc Thesis/Final Work/Transformed Data/2007-2010/2-day-consumption.xlsx")
part2007<-read.csv("C:/Users/HP/Desktop/My WUR MSc Thesis/Final Work/RIVM DATASETS/RIVM Dataset 2007-2010/CSV/participant.csv", sep="|")


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
as.numeric(fcs2003$p_id) -> fcs2003$p_id
fcs2003$p_id

new_data3<-new_data3%>%
  rename(id=p_id)


library(SPADE.RIVMNwCore)
f.spade.subgroups.bootstrap(FUN = f.spade,
                  frml.ia = meats ~ fp(age), # model for intake amounts, 
                  frml.if = meats ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                  data = new_data, 
                  min.age = 19, 
                  max.age = 69, 
                  sex.label = "both", 
                  groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                  age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                  weights.name = "w_demog_season_wk_wknd",
                  seed = 100,
                  n.boot = 3,
                  spade.output.path = "EDU12_SPADE_OUTPUT")

#For Bread 
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = bread ~ fp(age), # model for intake amounts, 
                            frml.if = bread ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU12_SPADE_OUTPUT")

#For Butter Milk  
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = butter_milk ~ fp(age), # model for intake amounts, 
                            frml.if = butter_milk ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU12_SPADE_OUTPUT")

#For Cereals 
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = cereals ~ fp(age), # model for intake amounts, 
                            frml.if = cereals ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU12_SPADE_OUTPUT")

#For Cheese_plus
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = cheese_plus ~ fp(age), # model for intake amounts, 
                            frml.if = cheese_plus ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU12_SPADE_OUTPUT")

#For Cheese_plus
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = cheese ~ fp(age), # model for intake amounts, 
                            frml.if = cheese ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data2, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU07_SPADE_OUTPUT")

#For Cheese_plus
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = milk ~ fp(age), # model for intake amounts, 
                            frml.if =milk ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU12_SPADE_OUTPUT")


#For cheese spread
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = cheese_spread ~ fp(age), # model for intake amounts, 
                            frml.if = cheese_spread ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU12_SPADE_OUTPUT")

#For Chicken and Turkey
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = chicken_turkey ~ fp(age), # model for intake amounts, 
                            frml.if = chicken_turkey ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU12_SPADE_OUTPUT")

#For Drink Yoghurt 
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = drink_yoghurt ~ fp(age), # model for intake amounts, 
                            frml.if = drink_yoghurt ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU12_SPADE_OUTPUT")

#For Eggs
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = eggs ~ fp(age), # model for intake amounts, 
                            frml.if = eggs ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU12_SPADE_OUTPUT")


#For Fish
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = fish ~ fp(age), # model for intake amounts, 
                            frml.if = fish ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU12_SPADE_OUTPUT")

#For Meat Diary Subs 
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = meat_diary_subs ~ fp(age), # model for intake amounts, 
                            frml.if = meat_diary_subs ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU12_SPADE_OUTPUT")

#For Meats
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = meats ~ fp(age), # model for intake amounts, 
                            frml.if = meats ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU12_SPADE_OUTPUT")

#For Milk
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = milk ~ fp(age), # model for intake amounts, 
                            frml.if = milk ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU12_SPADE_OUTPUT")

#For Milk Beverages  
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = milk_beverages ~ fp(age), # model for intake amounts, 
                            frml.if = milk_beverages ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU12_SPADE_OUTPUT")

#For Nuts and seeds  
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = nuts_and_seeds ~ fp(age), # model for intake amounts, 
                            frml.if = nuts_and_seeds ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU12_SPADE_OUTPUT")

#For Other red meats 
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = other_red_meats ~ fp(age), # model for intake amounts, 
                            frml.if = other_red_meats ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU12_SPADE_OUTPUT")

#For Other White Meats 
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = other_white_meats ~ fp(age), # model for intake amounts, 
                            frml.if = other_white_meats ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU12_SPADE_OUTPUT")

#For Poultry 
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = poultry ~ fp(age), # model for intake amounts, 
                            frml.if = poultry ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU12_SPADE_OUTPUT")


#For Poultry 
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = cheese ~ fp(age), # model for intake amounts, 
                            frml.if = cheese ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU12_SPADE_OUTPUT")

#For Processed MEats 
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = processed_meats ~ fp(age), # model for intake amounts, 
                            frml.if = processed_meats ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU12_SPADE_OUTPUT")

f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = processed_meats ~ fp(age), # model for intake amounts, 
                            frml.if = processed_meats ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 200,
                            spade.output.path = "EDU13_SPADE_OUTPUT")



#For Pulse
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = pulse ~ fp(age), # model for intake amounts, 
                            frml.if = pulse ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU12TRY_SPADE_OUTPUT")

#For Semi Skimmed Yoghurt 
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = semi_skimmed_yoghurt ~ fp(age), # model for intake amounts, 
                            frml.if = semi_skimmed_yoghurt  ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU12_SPADE_OUTPUT")

#For Skimmed Milk 
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = skimmed_milk ~ fp(age), # model for intake amounts, 
                            frml.if = skimmed_milk ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU12_SPADE_OUTPUT")

#For Skimmed Yoghurt 
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = skimmed_yoghurt ~ fp(age), # model for intake amounts, 
                            frml.if = skimmed_yoghurt ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU12_SPADE_OUTPUT")

#For Pork 
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = pork ~ fp(age), # model for intake amounts, 
                            frml.if = pork ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU12_SPADE_OUTPUT")

#For Whole Milk  
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = whole_milk ~ fp(age), # model for intake amounts, 
                            frml.if = whole_milk ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU12_SPADE_OUTPUT")


#For Whole Yoghurt 
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = whole_yoghurt ~ fp(age), # model for intake amounts, 
                            frml.if = whole_yoghurt ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU12_SPADE_OUTPUT")

#For Whole Yoghurt 
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = yoghurt ~ fp(age), # model for intake amounts, 
                            frml.if = yoghurt ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU12_SPADE_OUTPUT")


#### FOR 2007-2010 for the 3-Part Model
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = beef ~ fp(age), # model for intake amounts, 
                            frml.if = beef ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data2, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU07_SPADE_OUTPUT")

#For Bread 
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = bread ~ fp(age), # model for intake amounts, 
                            frml.if = bread ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data2, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU07_SPADE_OUTPUT")

#For Butter Milk  
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = butter_milk ~ fp(age), # model for intake amounts, 
                            frml.if = butter_milk ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data2, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU07_SPADE_OUTPUT")

#For Cereals 
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = cereals ~ fp(age), # model for intake amounts, 
                            frml.if = cereals ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data2, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU07_SPADE_OUTPUT")

#For Cheese_plus
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = cheese_plus ~ fp(age), # model for intake amounts, 
                            frml.if = cheese_plus ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data2, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU07_SPADE_OUTPUT")

#For cheese spread
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = cheese_spread ~ fp(age), # model for intake amounts, 
                            frml.if = cheese_spread ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data2, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU07_SPADE_OUTPUT")

#For Chicken and Turkey
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = chicken_turkey ~ fp(age), # model for intake amounts, 
                            frml.if = chicken_turkey ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data2, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU07_SPADE_OUTPUT")

#For Drink Yoghurt 
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = drink_yoghurt ~ fp(age), # model for intake amounts, 
                            frml.if = drink_yoghurt ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data2, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU07_SPADE_OUTPUT")

#For Eggs
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = eggs ~ fp(age), # model for intake amounts, 
                            frml.if = eggs ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data2, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU07_SPADE_OUTPUT")


#For Fish
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = fish ~ fp(age), # model for intake amounts, 
                            frml.if = fish ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data2, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU07_SPADE_OUTPUT")

#For Meat Diary Subs 
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = meat_diary_subs ~ fp(age), # model for intake amounts, 
                            frml.if = meat_diary_subs ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data2, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU07_SPADE_OUTPUT")

#For Meats
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = meats ~ fp(age), # model for intake amounts, 
                            frml.if = meats ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data2, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU07_SPADE_OUTPUT")

#For Milk
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = milk ~ fp(age), # model for intake amounts, 
                            frml.if = milk ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data2, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU07_SPADE_OUTPUT")

#For Milk Beverages  
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = milk_beverages ~ fp(age), # model for intake amounts, 
                            frml.if = milk_beverages ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data2, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU07_SPADE_OUTPUT")

#For Nuts and seeds  
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = nuts_and_seeds ~ fp(age), # model for intake amounts, 
                            frml.if = nuts_and_seeds ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data2, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU07_SPADE_OUTPUT")

#For Other red meats 
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = other_red_meats ~ fp(age), # model for intake amounts, 
                            frml.if = other_red_meats ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data2, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU07_SPADE_OUTPUT")

#For Other White Meats 
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = other_white_meats ~ fp(age), # model for intake amounts, 
                            frml.if = other_white_meats ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data2, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU07_SPADE_OUTPUT")

#For Poultry 
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = poultry ~ fp(age), # model for intake amounts, 
                            frml.if = poultry ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data2, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU07_SPADE_OUTPUT")

#For Processed MEats 
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = processed_meats ~ fp(age), # model for intake amounts, 
                            frml.if = processed_meats ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data2, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU07_SPADE_OUTPUT")

#For Pulse
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = pulse ~ fp(age), # model for intake amounts, 
                            frml.if = pulse ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data2, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU07_SPADE_OUTPUT")

#For Semi Skimmed Yoghurt 
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = semi_skimmed_yoghurt ~ fp(age), # model for intake amounts, 
                            frml.if = semi_skimmed_yoghurt  ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data2, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU07_SPADE_OUTPUT")

#For Skimmed Milk 
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = skimmed_milk ~ fp(age), # model for intake amounts, 
                            frml.if = skimmed_milk ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data2, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU07_SPADE_OUTPUT")

#For Skimmed Yoghurt 
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = skimmed_yoghurt ~ fp(age), # model for intake amounts, 
                            frml.if = skimmed_yoghurt ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data2, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU07_SPADE_OUTPUT")

#For Veal and Pork 
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = veal_and_pork ~ fp(age), # model for intake amounts, 
                            frml.if = veal_and_pork ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data2, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU07_SPADE_OUTPUT")

#For Whole Milk  
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = whole_milk ~ fp(age), # model for intake amounts, 
                            frml.if = whole_milk ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data2, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU07_SPADE_OUTPUT")


#For Whole Yoghurt 
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = whole_yoghurt ~ fp(age), # model for intake amounts, 
                            frml.if = whole_yoghurt ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data2, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU07_SPADE_OUTPUT")

#For Whole Yoghurt 
f.spade.subgroups.bootstrap(FUN = f.spade,
                            frml.ia = yoghurt ~ fp(age), # model for intake amounts, 
                            frml.if = yoghurt ~ cs(age), # "no.if" = no zeroes, no intake frequencies 
                            data = new_data2, 
                            min.age = 19, 
                            max.age = 69, 
                            sex.label = "both", 
                            groups.frml = ~ sex + edu, # extra argument/option with respect to f.spade 
                            age.classes = list (AgeCl = c(19, 30, 50, 69), bb = c(19,30, 50, 69)), 
                            weights.name = "w_demog_season_wk_wknd",
                            seed = 100,
                            n.boot = 3,
                            spade.output.path = "EDU07_SPADE_OUTPUT")
