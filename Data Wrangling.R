#Import the Food Consumption Data 
#For 2012-2016
foodnut2012<-read.csv("C:/Users/HP/Desktop/My WUR MSc Thesis/Final Work/RIVM DATASETS/RIVM Dataset 2012-2016/cSV/foodnut.csv", sep="|")
View(foodnut2012)
#For 2007-2010
foodnut2007<-read.csv("C:/Users/HP/Desktop/My WUR MSc Thesis/Final Work/RIVM DATASETS/RIVM Dataset 2007-2010/CSV/consumption_food_nut.csv", sep="|")
View(foodnut2007)

#Import data for 2003
foodnut2003<-read.csv("C:/Users/HP/Desktop/My WUR MSc Thesis/Final Work/RIVM DATASETS/RIVM Young Adults/CSV/consumption_food_nut.csv", sep = "|")

View(foodnut2003)

#Select the required columns 
library(tidyverse)
library(dplyr)
select(foodnut2012, p_id, prod_desc, cd_id, mDay, fco, type, place, nevocode, group, subgroup1, subgroup2, cons_qty, prot_veg, prot, prot_ani)->new_data
View(new_data)

foodnut2007%>%
  select(p_id, prod_desc, cd_id, mDay, fco, type, place, nevocode, group, subgroup1, subgroup2, cons_qty, prot_veg, prot, prot_ani)->new_data2
View(new_data2)

foodnut2003%>%
  select(p_id, NAME, GROUP, SUBGROUP1, SUBGROUP2, HOUR, cd_id, mday, fco, TYPE, nevo_code, PROT, CONS_QTY)->new_data
View(new_data)



#Now make computation of the meat consumed in the Netherlands 
new_data%>%
  mutate(meats=ifelse(new_data$group==7, new_data$cons_qty, 0))-> meats

meats%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("meats"), sum) -> n2_meats
write.csv(n2_meats, "n2_meats.csv")


View(new_data)
#Now make calculation for the fermeted and non fermented milk 

new_data%>%
  mutate(Ferment=ifelse(new_data$group==5 & new_data$subgroup1==1 &new_data$subgroup2==1, new_data$cons_qty, 0))-> Ferment

Ferment%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("Ferment"), sum) -> n2_Ferment
write.csv(n2_Ferment, "n2_Ferment.csv")

#Now for the fermented milk 

new_data%>%
  mutate(N_ferment=ifelse(new_data$group==5 & new_data$subgroup1==1 &new_data$subgroup2==2, new_data$cons_qty, 0))-> N_ferment

N_ferment%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("N_ferment"), sum) -> n2_N_ferment
write.csv(n2_N_ferment, "n2_N_ferment.csv")



#####********************############################### For 2007-2010
#####*
#Now make calculation for the fermeted and non fermented milk 

new_data2%>%
  mutate(Ferment7=ifelse(new_data2$group==5 & new_data2$subgroup1==1 &new_data2$subgroup2==1, new_data2$cons_qty, 0))-> Ferment7

Ferment7%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("Ferment7"), sum) -> n2_Ferment7
write.csv(n2_Ferment7, "n2_Ferment7.csv")

#Now for the fermented milk 

new_data2%>%
  mutate(N_ferment7=ifelse(new_data2$group==5 & new_data2$subgroup1==1 &new_data2$subgroup2==2, new_data2$cons_qty, 0))-> N_ferment7

N_ferment7%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("N_ferment7"), sum) -> n2_N_ferment7
write.csv(n2_N_ferment7, "n2_N_ferment7.csv")



#Second Category 
new_data%>%
  mutate(fresh_meats=ifelse(new_data$group==7 & subgroup1==1, new_data$cons_qty, 0))-> fresh_meats

fresh_meats%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("fresh_meats"), sum) -> n2_fresh_meats
write.csv(n2_fresh_meats, "n2_fresh_meats.csv")




#Third Category 
new_data%>%
  mutate(poultry=ifelse(new_data$group==7 & subgroup1==2, new_data$cons_qty, 0))-> poultry

poultry%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("poultry"), sum) -> n2_poultry
write.csv(n2_poultry, "poultry.csv")



#Fourth Category 
new_data%>%
  mutate(processed_meats=ifelse(new_data$group==7 & subgroup1==4, new_data$cons_qty, 0))-> processed_meats

processed_meats%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("processed_meats"), sum) -> n2_processed_meats
write.csv(n2_processed_meats, "processed_meats.csv")




#Compute for the offals and game 
#Fourth Category 
new_data%>%
  mutate(game_meats=ifelse(new_data$group==7 & subgroup1==3, new_data$cons_qty, 0))-> game_meats

game_meats%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("game_meats"), sum) -> n2_game_meats
write.csv(n2_game_meats, "game_meats.csv")



#Fifth Category 
new_data%>%
  mutate(offals_meats=ifelse(new_data$group==7 & subgroup1==5, new_data$cons_qty, 0))-> offals_meats

offals_meats%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("offals_meats"), sum) -> n2_offals_meats
write.csv(n2_offals_meats, "offals_meats.csv")



#Compute for the diary products 
#Diary 
new_data%>%
  mutate(diary2=ifelse(new_data$group==5, new_data$cons_qty, 0))-> diary2

diary2%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("diary2"), sum) -> n2_diary2
write.csv(diary2, "diary2.csv")




#For Milk 
new_data%>%
  mutate(milk=ifelse(new_data$group==5 & subgroup1==1, new_data$cons_qty, 0))-> milk

milk%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("milk"), sum) -> n2_milk
write.csv(n2_milk, "milk.csv")


#For Milk Beverages  
new_data%>%
  mutate(milk_beverages=ifelse(new_data$group==5 & subgroup1==2, new_data$cons_qty, 0))-> milk_beverages

milk_beverages%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("milk_beverages"), sum) -> n2_milk_beverages
write.csv(n2_milk_beverages, "milk_beverages.csv")


#For yoghurt
new_data%>%
  mutate(yoghurt=ifelse(new_data$group==5 & subgroup1==3, new_data$cons_qty, 0))-> yoghurt

yoghurt%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("yoghurt"), sum) -> n2_yoghurt
write.csv(n2_yoghurt, "yoghurt.csv")


#For fromage
new_data%>%
  mutate(fromage=ifelse(new_data$group==5 & subgroup1==4, new_data$cons_qty, 0))-> fromage

fromage%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("fromage"), sum) -> n2_fromage
write.csv(n2_fromage, "fromage.csv")


#For Cheeses 
new_data%>%
  mutate(cheeses=ifelse(new_data$group==5 & subgroup1==5, new_data$cons_qty, 0))-> cheeses

cheeses%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("cheeses"), sum) -> n2_cheeses
write.csv(n2_cheeses, "cheeses.csv")


#For Desserts 
new_data%>%
  mutate(desserts=ifelse(new_data$group==5 & subgroup1==6, new_data$cons_qty, 0))-> desserts

desserts%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("desserts"), sum) -> n2_desserts
write.csv(n2_desserts, "desserts.csv")


#For Creams  
new_data%>%
  mutate(creams=ifelse(new_data$group==5 & subgroup1==7, new_data$cons_qty, 0))-> creams

creams%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("creams"), sum) -> n2_creams
write.csv(n2_creams, "creams.csv")


#For Coffee_Milk
new_data%>%
  mutate(coffee_milk=ifelse(new_data$group==5 & subgroup1==1, new_data$cons_qty, 0))-> coffee_milk

coffee_milk%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("coffee_milk"), sum) -> n2_coffee_milk
write.csv(n2_coffee_milk, "coffee_milk.csv")









#Now Compute each protein class 
#Nuts and seeds 

new_data%>%
  mutate(new_data, nuts_and_seeds=ifelse(nevocode %in% c(198,199,200,201,203,204,205,206,207,546,621,838,867,
                                                         872,876,1895,1896,1935,2048,2176,2345,2805,2806,2844,
                                                         2886,2887,3378,3446,3447,5049,5050,5110,5111,5112,5113,5158,5404), new_data$cons_qty, 0),
         prot_nuts_and_seeds= ifelse(nevocode %in% c(198,199,200,201,203,204,205,206,207,546,621,838,867,
                                                     872,876,1895,1896,1935,2048,2176,2345,2805,2806,2844,
                                                     2886,2887,3378,3446,3447,5049,5050,5110,5111,5112,5113,5158,5404), new_data$prot, 0),
         nuts_and_seeds_ani = ifelse(nevocode %in% c(198,199,200,201,203,204,205,206,207,546,621,838,867,
                                                     872,876,1895,1896,1935,2048,2176,2345,2805,2806,2844,
                                                     2886,2887,3378,3446,3447,5049,5050,5110,5111,5112,5113,5158,5404), new_data$prot_ani,0),
         nuts_and_seeds_veg = ifelse(nevocode %in% c(198,199,200,201,203,204,205,206,207,546,621,838,867,
                                                     872,876,1895,1896,1935,2048,2176,2345,2805,2806,2844,
                                                     2886,2887,3378,3446,3447,5049,5050,5110,5111,5112,5113,5158,5404), new_data$prot_veg, 0)) -> nuts_and_seeds

nuts_and_seeds%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("nuts_and_seeds", "prot_nuts_and_seeds", "nuts_and_seeds_ani", "nuts_and_seeds_veg"), sum) -> n2_nuts_and_seeds
write.csv(n2_nuts_and_seeds, "n2_nuts_and_seeds.csv")

n2_nuts_and_seeds%>%
  group_by(p_id)%>%
  summarise_at(c("nuts_and_seeds", "prot_nuts_and_seeds", "nuts_and_seeds_ani", "nuts_and_seeds_veg"), mean) -> avg_nuts_and_seeds
write.csv(avg_nuts_and_seeds, "avg_nuts_and_seeds.csv")


#Add cereals 

new_data%>%
  mutate(new_data, cereals=ifelse(nevocode %in% c(1890,2158,811,439,231,590,868), new_data$cons_qty, 0),
         prot_cereals= ifelse(nevocode %in% c(1890,2158,811,439,231,590,868), new_data$prot, 0),
         cereals_ani = ifelse(nevocode %in% c(1890,2158,811,439,231,590,868), new_data$prot_ani,0),
         cereals_veg = ifelse(nevocode %in% c(1890,2158,811,439,231,590,868), new_data$prot_veg, 0)) -> cereals

cereals%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("cereals", "prot_cereals", "cereals_ani", "cereals_veg"), sum) -> n2_cereals
write.csv(n2_cereals, "n2_cereals.csv")

n2_cereals%>%
  group_by(p_id)%>%
  summarise_at(c("cereals", "prot_cereals", "cereals_ani", "cereals_veg"), mean) -> avg_cereals
write.csv(avg_cereals, "cereals.csv")


#Add Cheese Spread
new_data%>%
  mutate(new_data, cheese_spread=ifelse(nevocode %in% c(304,654,718,1489,1650,1955,2517), new_data$cons_qty, 0),
         prot_cheese_spread= ifelse(nevocode %in% c(304,654,718,1489,1650,1955,2517), new_data$prot, 0),
         cheese_spread_ani = ifelse(nevocode %in% c(304,654,718,1489,1650,1955,2517), new_data$prot_ani,0),
         cheese_spread_veg = ifelse(nevocode %in% c(304,654,718,1489,1650,1955,2517), new_data$prot_veg, 0)) -> cheese_spread

cheese_spread%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("cheese_spread", "prot_cheese_spread", "cheese_spread_ani", "cheese_spread_veg"), sum) -> n2_cheese_spread
write.csv(n2_cheese_spread, "n2_cheese_spread.csv")

n2_cheese_spread%>%
  group_by(p_id)%>%
  summarise_at(c("cheese_spread", "prot_cheese_spread", "cheese_spread_ani", "cheese_spread_veg"), mean) -> avg_cheese_spread
write.csv(avg_cheese_spread, "avg_cheese_spread.csv")


#Add Cheese Plus
new_data%>%
  mutate(new_data, cheese_plus=ifelse(nevocode %in% c(1103,1111,1382,1723,1727,517,514,2264,3164,3155,3163,927,2516), new_data$cons_qty, 0),
         prot_cheese_plus= ifelse(nevocode %in% c(1103,1111,1382,1723,1727,517,514,2264,3164,3155,3163,927,2516), new_data$prot, 0),
         cheese_plus_ani = ifelse(nevocode %in% c(1103,1111,1382,1723,1727,517,514,2264,3164,3155,3163,927,2516), new_data$prot_ani,0),
         cheese_plus_veg = ifelse(nevocode %in% c(1103,1111,1382,1723,1727,517,514,2264,3164,3155,3163,927,2516), new_data$prot_veg, 0)) -> cheese_plus

cheese_plus%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("cheese_plus", "prot_cheese_plus", "cheese_plus_ani", "cheese_plus_veg"), sum) -> n2_cheese_plus
write.csv(n2_cheese_plus, "n2_cheese_plus.csv")

n2_cheese_plus%>%
  group_by(p_id)%>%
  summarise_at(c("cheese_plus", "prot_cheese_plus", "cheese_plus_ani", "cheese_plus_veg"), mean) -> avg_cheese_plus
write.csv(avg_cheese_plus, "avg_cheese_plus.csv")


#Add Cheese 
new_data%>%
  mutate(cheese=ifelse(new_data$group==5 & new_data$subgroup1==5, new_data$cons_qty, 0),
         prot_cheese= ifelse(new_data$group==5 & new_data$subgroup1==5, new_data$prot,0), 
         cheese_ani= ifelse(new_data$group==5 & new_data$subgroup1==5,new_data$prot_ani,0),
         cheese_veg = ifelse(new_data$group==5 & new_data$subgroup1==5, new_data$prot_veg,0))-> cheese


cheese%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("cheese", "prot_cheese", "cheese_ani", "cheese_veg"), sum) -> n2_cheese
write.csv(n2_cheese, "n2_cheese.csv")

n2_cheese%>%
  group_by(p_id)%>%
  summarise_at(c("cheese", "prot_cheese", "cheese_ani", "cheese_veg"), mean) -> avg_cheese
write.csv(avg_cheese, "avg_cheese.csv")

#Add Pork Separately
new_data%>%
  mutate(pork=ifelse(new_data$group==7 & new_data$subgroup1==1 & subgroup2==3, new_data$cons_qty, 0),
         prot_pork= ifelse(new_data$group==7 & new_data$subgroup1==1 & subgroup2==3, new_data$prot,0))-> pork


pork%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("pork", "prot_pork"), sum) -> n2_pork
write.csv(n2_pork, "n2_pork.csv")

n2_pork%>%
  group_by(p_id)%>%
  summarise_at(c("pork", "prot_pork"), mean) -> avg_pork
write.csv(avg_pork, "avg_pork.csv")


#Add Veal Separately
new_data%>%
  mutate(veal=ifelse(new_data$group==7 & new_data$subgroup1==1 & subgroup2==2, new_data$cons_qty, 0),
         prot_veal= ifelse(new_data$group==5 & new_data$subgroup1==1 & subgroup2==2, new_data$prot,0))-> veal


veal%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("veal", "prot_veal"), sum) -> n2_veal
write.csv(n2_veal, "n2_veal.csv")

n2_veal%>%
  group_by(p_id)%>%
  summarise_at(c("veal", "prot_veal"), mean) -> avg_veal
write.csv(avg_veal, "avg_veal.csv")



#Add Eggs 
new_data%>%
  mutate(new_data, eggs=ifelse(nevocode %in% c(83,84,85,86,87,358,1314,2769,2770,2771,2772,2773,2774), new_data$cons_qty, 0),
         prot_eggs= ifelse(nevocode %in% c(83,84,85,86,87,358,1314,2769,2770,2771,2772,2773,2774), new_data$prot, 0),
         eggs_ani = ifelse(nevocode %in% c(83,84,85,86,87,358,1314,2769,2770,2771,2772,2773,2774), new_data$prot_ani,0),
         eggs_veg = ifelse(nevocode %in% c(83,84,85,86,87,358,1314,2769,2770,2771,2772,2773,2774), new_data$prot_veg, 0)) -> eggs

eggs%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("eggs", "prot_eggs", "eggs_ani", "eggs_veg"), sum) -> n2_eggs
write.csv(n2_eggs, "n2_eggs.csv")

n2_eggs%>%
  group_by(p_id)%>%
  summarise_at(c("eggs", "prot_eggs", "eggs_ani", "eggs_veg"), mean) -> avg_eggs
write.csv(avg_eggs, "avg_eggs.csv")

#Add Fish 
new_data%>%
  mutate(new_data, fish=ifelse(nevocode %in% c(111,112,113,114,116,347,348,349,350,351,352,353,354,355,356,357,602,603,604,702,703,813,814,815,817,818,819,820,822,918,919,1096,1097,1098,1100,1101,1255,1310,1315,1583,1584,1585,1586,1587,1588,1589,1590,1605,1607,1608,1609,1610,1611,1612,1613,1614,1615,1616,1617,1618,
                                               1619,1620,1621,1622,1623,1624,1625,1627,1628,1629,1630,1631,1632,1899,2296,2297,2298,2299,2765,2947,3070,3071,3137,3199,3252,3256,3318,3319,3320,3321,3322,
                                               5265,5266,5326,5342), new_data$cons_qty, 0),
         prot_fish= ifelse(nevocode %in% c(111,112,113,114,116,347,348,349,350,351,352,353,354,355,356,357,602,603,604,702,703,813,814,815,817,818,819,820,822,918,919,1096,1097,1098,1100,1101,1255,1310,1315,1583,1584,1585,1586,1587,1588,1589,1590,1605,1607,1608,1609,1610,1611,1612,1613,1614,1615,1616,1617,1618,
                                           1619,1620,1621,1622,1623,1624,1625,1627,1628,1629,1630,1631,1632,1899,2296,2297,2298,2299,2765,2947,3070,3071,3137,3199,3252,3256,3318,3319,3320,3321,3322,
                                           5265,5266,5326,5342), new_data$prot, 0),
         fish_ani = ifelse(nevocode %in% c(111,112,113,114,116,347,348,349,350,351,352,353,354,355,356,357,602,603,604,702,703,813,814,815,817,818,819,820,822,918,919,1096,1097,1098,1100,1101,1255,1310,1315,1583,1584,1585,1586,1587,1588,1589,1590,1605,1607,1608,1609,1610,1611,1612,1613,1614,1615,1616,1617,1618,
                                           1619,1620,1621,1622,1623,1624,1625,1627,1628,1629,1630,1631,1632,1899,2296,2297,2298,2299,2765,2947,3070,3071,3137,3199,3252,3256,3318,3319,3320,3321,3322,
                                           5265,5266,5326,5342), new_data$prot_ani,0),
         fish_veg = ifelse(nevocode %in% c(111,112,113,114,116,347,348,349,350,351,352,353,354,355,356,357,602,603,604,702,703,813,814,815,817,818,819,820,822,918,919,1096,1097,1098,1100,1101,1255,1310,1315,1583,1584,1585,1586,1587,1588,1589,1590,1605,1607,1608,1609,1610,1611,1612,1613,1614,1615,1616,1617,1618,
                                           1619,1620,1621,1622,1623,1624,1625,1627,1628,1629,1630,1631,1632,1899,2296,2297,2298,2299,2765,2947,3070,3071,3137,3199,3252,3256,3318,3319,3320,3321,3322,
                                           5265,5266,5326,5342), new_data$prot_veg, 0)) -> fish

fish%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("fish", "prot_fish", "fish_ani", "fish_veg"), sum) -> n2_fish
write.csv(n2_fish, "n2_fish.csv")

n2_fish%>%
  group_by(p_id)%>%
  summarise_at(c("fish", "prot_fish", "fish_ani", "fish_veg"), mean) -> avg_fish
write.csv(avg_fish, "avg_fish.csv")


#Add meats 
new_data%>%
  mutate(meats=ifelse(new_data$group==7, new_data$cons_qty, 0),
         prot_meats= ifelse(new_data$group==7, new_data$prot,0), 
         meats_ani= ifelse(new_data$group==7,new_data$prot_ani,0),
         meats_veg = ifelse(new_data$group==7, new_data$prot_veg,0))-> meats


meats%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("meats", "prot_meats", "meats_ani", "meats_veg"), sum) -> n2_meats
write.csv(n2_meats, "n2_meats.csv")

n2_meats%>%
  group_by(p_id)%>%
  summarise_at(c("meats", "prot_meats", "meats_ani", "meats_veg"), mean) -> avg_meats
write.csv(avg_meats, "avg_meats.csv")

#Add the Poultry 
new_data%>%
  mutate(poultry=ifelse(new_data$group==7 & new_data$subgroup1==2,  new_data$cons_qty, 0),
         prot_poultry= ifelse(new_data$group==7 & new_data$subgroup1==2, new_data$prot,0), 
         poultry_ani= ifelse(new_data$group==7 & new_data$subgroup1==2,new_data$prot_ani,0),
         poultry_veg = ifelse(new_data$group==7 & new_data$subgroup1==2, new_data$prot_veg,0))-> poultry


poultry%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("poultry", "prot_poultry", "poultry_ani", "poultry_veg"), sum) -> n2_poultry
write.csv(n2_poultry, "n2_poultry.csv")

n2_poultry%>%
  group_by(p_id)%>%
  summarise_at(c("poultry", "prot_poultry", "poultry_ani", "poultry_veg"), mean) -> avg_poultry
write.csv(avg_poultry, "avg_poultry.csv")

#Add Beef to it 
new_data%>%
  mutate(beef=ifelse(new_data$group==7 & new_data$subgroup1==1 & new_data$subgroup2==1,  new_data$cons_qty, 0),
         prot_beef= ifelse(new_data$group==7 & new_data$subgroup1==1 & new_data$subgroup2==1, new_data$prot,0), 
         beef_ani= ifelse(new_data$group==7 & new_data$subgroup1==1 & new_data$subgroup2==1,new_data$prot_ani,0),
         beef_veg = ifelse(new_data$group==7 & new_data$subgroup1==1 & new_data$subgroup2==1, new_data$prot_veg,0))-> beef


beef%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("beef", "prot_beef", "beef_ani", "beef_veg"), sum) -> n2_beef
write.csv(n2_beef, "n2_beef.csv")

n2_beef%>%
  group_by(p_id)%>%
  summarise_at(c("beef", "prot_beef", "beef_ani", "beef_veg"), mean) -> avg_beef
write.csv(avg_beef, "avg_beef.csv")

#Add processed Meats 
new_data%>%
  mutate(processed_meats=ifelse(new_data$group==7 & new_data$subgroup1==4,  new_data$cons_qty, 0),
         prot_processed_meats= ifelse(new_data$group==7 & new_data$subgroup1==4, new_data$prot,0), 
         processed_meats_ani= ifelse(new_data$group==7 & new_data$subgroup1==4,new_data$prot_ani,0),
         processed_meats_veg = ifelse(new_data$group==7 & new_data$subgroup1==4, new_data$prot_veg,0))-> processed_meats


processed_meats%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("processed_meats", "prot_processed_meats", "processed_meats_ani", "processed_meats_veg"), sum) -> n2_processed_meats
write.csv(n2_processed_meats, "n2_processed_meats.csv")

n2_processed_meats%>%
  group_by(p_id)%>%
  summarise_at(c("processed_meats", "prot_processed_meats", "processed_meats_ani", "processed_meats_veg"), mean) -> avg_processed_meats
write.csv(avg_processed_meats, "avg_processed_meats.csv")

#Add veal and Pork 
new_data%>%
  mutate(new_data, veal_and_pork=ifelse(nevocode %in% c(1436,1437,1673,3016,3017,3019,1418,1419,1420,1421,1422,1424,1425,1427,1428,1429,1430,1431,1667,1668,1788,1790,2340,3024,3027,3031), new_data$cons_qty, 0),
         prot_veal_and_pork= ifelse(nevocode %in% c(1436,1437,1673,3016,3017,3019,1418,1419,1420,1421,1422,1424,1425,1427,1428,1429,1430,1431,1667,1668,1788,1790,2340,3024,3027,3031), new_data$prot, 0),
         veal_and_pork_ani = ifelse(nevocode %in% c(1436,1437,1673,3016,3017,3019,1418,1419,1420,1421,1422,1424,1425,1427,1428,1429,1430,1431,1667,1668,1788,1790,2340,3024,3027,3031), new_data$prot_ani,0),
         veal_and_pork_veg = ifelse(nevocode %in% c(1436,1437,1673,3016,3017,3019,1418,1419,1420,1421,1422,1424,1425,1427,1428,1429,1430,1431,1667,1668,1788,1790,2340,3024,3027,3031), new_data$prot_veg, 0)) -> veal_and_pork

veal_and_pork%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("veal_and_pork", "prot_veal_and_pork", "veal_and_pork_ani", "veal_and_pork_veg"), sum) -> n2_veal_and_pork
write.csv(n2_veal_and_pork, "n2_veal_and_pork.csv")

n2_veal_and_pork%>%
  group_by(p_id)%>%
  summarise_at(c("veal_and_pork", "prot_veal_and_pork", "veal_and_pork_ani", "veal_and_pork_veg"), mean) -> avg_veal_and_pork
write.csv(avg_veal_and_pork, "avg_veal_and_pork.csv")

#Add Other Red Meats 
new_data%>%
  mutate(new_data, other_red_meats=ifelse(nevocode %in% c(99,1444,1445,1675,2057,2058,95,1900,2089,107), new_data$cons_qty, 0),
         prot_other_red_meats= ifelse(nevocode %in% c(99,1444,1445,1675,2057,2058,95,1900,2089,107), new_data$prot, 0),
         other_red_meats_ani = ifelse(nevocode %in% c(99,1444,1445,1675,2057,2058,95,1900,2089,107), new_data$prot_ani,0),
         other_red_meats_veg = ifelse(nevocode %in% c(99,1444,1445,1675,2057,2058,95,1900,2089,107), new_data$prot_veg, 0)) -> other_red_meats

other_red_meats%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("other_red_meats", "prot_other_red_meats", "other_red_meats_ani", "other_red_meats_veg"), sum) -> n2_other_red_meats
write.csv(n2_other_red_meats, "n2_other_red_meats.csv")

other_red_meats%>%
  group_by(p_id)%>%
  summarise_at(c("other_red_meats", "prot_other_red_meats", "other_red_meats_ani", "other_red_meats_veg"), mean) -> avg_other_red_meats
write.csv(avg_other_red_meats, "avg_other_red_meats.csv")

#Add Other White meats 
new_data%>%
  mutate(new_data, other_white_meats=ifelse(nevocode %in% c(106,109,107,339,109,110,106,320,337), new_data$cons_qty, 0),
         prot_other_white_meats= ifelse(nevocode %in% c(106,109,107,339,109,110,106,320,337), new_data$prot, 0),
         other_white_meats_ani = ifelse(nevocode %in% c(106,109,107,339,109,110,106,320,337), new_data$prot_ani,0),
         other_white_meats_veg = ifelse(nevocode %in% c(106,109,107,339,109,110,106,320,337), new_data$prot_veg, 0)) -> other_white_meats

other_white_meats%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("other_white_meats", "prot_other_white_meats", "other_white_meats_ani", "other_white_meats_veg"), sum) -> n2_other_white_meats
write.csv(n2_other_white_meats, "n2_other_white_meats.csv")

other_white_meats%>%
  group_by(p_id)%>%
  summarise_at(c("other_white_meats", "prot_other_white_meats", "other_white_meats_ani", "other_white_meats_veg"), mean) -> avg_other_white_meats
write.csv(avg_other_white_meats, "avg_other_white_meats.csv")

#Add Chicken and turkey 
new_data%>%
  mutate(new_data, chicken_turkey=ifelse(nevocode %in% c(108,1305,1392,1634,1642,2090,2341,2342,2364,330,1936,
                                                         2364), new_data$cons_qty, 0),
         prot_chicken_turkey= ifelse(nevocode %in% c(108,1305,1392,1634,1642,2090,2341,2342,2364,330,1936,
                                                     2364), new_data$prot, 0),
         chicken_turkey_ani = ifelse(nevocode %in% c(108,1305,1392,1634,1642,2090,2341,2342,2364,330,1936,
                                                     2364), new_data$prot_ani,0),
         chicken_turkey_veg = ifelse(nevocode %in% c(108,1305,1392,1634,1642,2090,2341,2342,2364,330,1936,
                                                     2364), new_data$prot_veg, 0)) -> chicken_turkey

chicken_turkey%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("chicken_turkey", "prot_chicken_turkey", "chicken_turkey_ani", "chicken_turkey_veg"), sum) -> n2_chicken_turkey
write.csv(n2_chicken_turkey, "n2_chicken_turkey.csv")

chicken_turkey%>%
  group_by(p_id)%>%
  summarise_at(c("chicken_turkey", "prot_chicken_turkey", "chicken_turkey_ani", "chicken_turkey_veg"), mean) -> avg_chicken_turkey
write.csv(avg_chicken_turkey, "avg_chicken_turkey.csv")


####Add Meats and Diary Subs 
new_data%>%
  mutate(new_data, meat_diary_subs=ifelse(nevocode %in% c(274, 291555, 687,688, 870, 871,1094,1380, 1381, 1458,1511,1512,1602, 1953,2030,2031,2046,2047,2261,2262,2282, 2285,2286, 2433, 2541, 2542,2544, 2690, 2858, 2888, 2939, 2951, 
                                                          2994,3040, 2041, 3176, 3180,5088,5101,5114,5116,5119,5144,5247), new_data$cons_qty, 0),
         prot_meat_diary_subs= ifelse(nevocode %in% c(274, 291555, 687,688, 870, 871,1094,1380, 1381, 1458,1511,1512,1602, 1953,2030,2031,2046,2047,2261,2262,2282, 2285,2286, 2433, 2541, 2542,2544, 2690, 2858, 2888, 2939, 2951, 
                                                      2994,3040, 2041, 3176, 3180,5088,5101,5114,5116,5119,5144,5247), new_data$prot, 0),
         meat_diary_subs_ani = ifelse(nevocode %in% c(274, 291555, 687,688, 870, 871,1094,1380, 1381, 1458,1511,1512,1602, 1953,2030,2031,2046,2047,2261,2262,2282, 2285,2286, 2433, 2541, 2542,2544, 2690, 2858, 2888, 2939, 2951, 
                                                      2994,3040, 2041, 3176, 3180,5088,5101,5114,5116,5119,5144,5247), new_data$prot_ani,0),
         meat_diary_subs_veg = ifelse(nevocode %in% c(274, 291555, 687,688, 870, 871,1094,1380, 1381, 1458,1511,1512,1602, 1953,2030,2031,2046,2047,2261,2262,2282, 2285,2286, 2433, 2541, 2542,2544, 2690, 2858, 2888, 2939, 2951, 
                                                      2994,3040, 2041, 3176, 3180,5088,5101,5114,5116,5119,5144,5247), new_data$prot_veg, 0)) -> meat_diary_subs

meat_diary_subs%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("meat_diary_subs", "prot_meat_diary_subs", "meat_diary_subs_ani", "meat_diary_subs_veg"), sum) -> n2_meat_diary_subs
write.csv(n2_meat_diary_subs, "n2_meat_diary_subs.csv")

meat_diary_subs%>%
  group_by(p_id)%>%
  summarise_at(c("meat_diary_subs", "prot_meat_diary_subs", "meat_diary_subs_ani", "meat_diary_subs_veg"), mean) -> avg_meat_diary_subs
write.csv(avg_meat_diary_subs, "avg_meat_diary_subs.csv")


#### Add Skimmed Milks 
new_data%>%
  mutate(new_data, skimmed_milk=ifelse(nevocode %in% c(286,294,295,2725,1719,286,1719,3240,5235,285), new_data$cons_qty, 0),
         prot_skimmed_milk= ifelse(nevocode %in% c(286,294,295,2725,1719,286,1719,3240,5235,285), new_data$prot, 0),
         skimmed_milk_ani = ifelse(nevocode %in% c(286,294,295,2725,1719,286,1719,3240,5235,285), new_data$prot_ani,0),
         skimmed_milk_veg = ifelse(nevocode %in% c(286,294,295,2725,1719,286,1719,3240,5235,285), new_data$prot_veg, 0)) -> skimmed_milk

skimmed_milk%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("skimmed_milk", "prot_skimmed_milk", "skimmed_milk_ani", "skimmed_milk_veg"), sum) -> n2_skimmed_milk
write.csv(n2_skimmed_milk, "n2_skimmed_milk.csv")

skimmed_milk%>%
  group_by(p_id)%>%
  summarise_at(c("skimmed_milk", "prot_skimmed_milk", "skimmed_milk_ani", "skimmed_milk_veg"), mean) -> avg_skimmed_milk
write.csv(avg_skimmed_milk, "avg_skimmed_milk.csv")


#Add Butter Milk 
new_data%>%
  mutate(new_data, butter_milk=ifelse(nevocode %in% c(289, 479), new_data$cons_qty, 0),
         prot_butter_milk= ifelse(nevocode %in% c(289, 479), new_data$prot, 0),
         butter_milk_ani = ifelse(nevocode %in% c(289, 479), new_data$prot_ani,0),
         butter_milk_veg = ifelse(nevocode %in% c(289, 479), new_data$prot_veg, 0)) -> butter_milk

butter_milk%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("butter_milk", "prot_butter_milk", "butter_milk_ani", "butter_milk_veg"), sum) -> n2_butter_milk
write.csv(n2_butter_milk, "n2_butter_milk.csv")

butter_milk%>%
  group_by(p_id)%>%
  summarise_at(c("butter_milk", "prot_butter_milk", "butter_milk_ani", "butter_milk_veg"), mean) -> avg_butter_milk
write.csv(avg_butter_milk, "avg_butter_milk.csv")

##Add the whole milk 
new_data%>%
  mutate(new_data, whole_milk=ifelse(nevocode %in% c(2240,296,279,5306,281,280), new_data$cons_qty, 0),
         prot_whole_milk= ifelse(nevocode %in% c(2240,296,279,5306,281,280), new_data$prot, 0),
         whole_milk_ani = ifelse(nevocode %in% c(2240,296,279,5306,281,280), new_data$prot_ani,0),
         whole_milk_veg = ifelse(nevocode %in% c(2240,296,279,5306,281,280), new_data$prot_veg, 0)) -> whole_milk

whole_milk%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("whole_milk", "prot_whole_milk", "whole_milk_ani", "whole_milk_veg"), sum) -> n2_whole_milk
write.csv(n2_whole_milk, "n2_whole_milk.csv")

whole_milk%>%
  group_by(p_id)%>%
  summarise_at(c("whole_milk", "prot_whole_milk", "whole_milk_ani", "whole_milk_veg"), mean) -> avg_whole_milk
write.csv(avg_whole_milk, "avg_whole_milk.csv")

#Add the Milk BEverges 
new_data%>%
  mutate(new_data, milk_beverages=ifelse(nevocode %in% c(272,273,279,294,479,657,862,1464,1970,2052,2053,
                                                         2259,2495,2496,2497,2500,2760,2835,2917,3004), new_data$cons_qty, 0),
         prot_milk_beverages= ifelse(nevocode %in% c(272,273,279,294,479,657,862,1464,1970,2052,2053,
                                                     2259,2495,2496,2497,2500,2760,2835,2917,3004), new_data$prot, 0),
         milk_beverages_ani = ifelse(nevocode %in% c(272,273,279,294,479,657,862,1464,1970,2052,2053,
                                                     2259,2495,2496,2497,2500,2760,2835,2917,3004), new_data$prot_ani,0),
         milk_beverages_veg = ifelse(nevocode %in% c(272,273,279,294,479,657,862,1464,1970,2052,2053,
                                                     2259,2495,2496,2497,2500,2760,2835,2917,3004), new_data$prot_veg, 0)) -> milk_beverages

milk_beverages%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("milk_beverages", "prot_milk_beverages", "milk_beverages_ani", "milk_beverages_veg"), sum) -> n2_milk_beverages
write.csv(n2_milk_beverages, "n2_milk_beverages.csv")

milk_beverages%>%
  group_by(p_id)%>%
  summarise_at(c("milk_beverages", "prot_milk_beverages", "milk_beverages_ani", "milk_beverages_veg"), mean) -> avg_milk_beverages
write.csv(avg_milk_beverages, "avg_milk_beverages.csv")


#Add the Pulse 
new_data%>%
  mutate(new_data, pulse=ifelse(nevocode %in% c(117,118,119,120,196,197,660,685,686,839,969,970,971,
                                                972,1095,1894,2314,3049,3073,3184,3185,3216,5167,5168,5169,5170,5171,5172,5173,5174,5175,5176,5428,5429,5430,5431), new_data$cons_qty, 0),
         prot_pulse= ifelse(nevocode %in% c(117,118,119,120,196,197,660,685,686,839,969,970,971,
                                            972,1095,1894,2314,3049,3073,3184,3185,3216,5167,5168,5169,5170,5171,5172,5173,5174,5175,5176,5428,5429,5430,5431), new_data$prot, 0),
         pulse_ani = ifelse(nevocode %in% c(117,118,119,120,196,197,660,685,686,839,969,970,971,
                                            972,1095,1894,2314,3049,3073,3184,3185,3216,5167,5168,5169,5170,5171,5172,5173,5174,5175,5176,5428,5429,5430,5431), new_data$prot_ani,0),
         pulse_veg = ifelse(nevocode %in% c(117,118,119,120,196,197,660,685,686,839,969,970,971,
                                            972,1095,1894,2314,3049,3073,3184,3185,3216,5167,5168,5169,5170,5171,5172,5173,5174,5175,5176,5428,5429,5430,5431), new_data$prot_veg, 0)) -> pulse

pulse%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("pulse", "prot_pulse", "pulse_ani", "pulse_veg"), sum) -> n2_pulse
write.csv(n2_pulse, "n2_pulse.csv")

pulse%>%
  group_by(p_id)%>%
  summarise_at(c("pulse", "prot_pulse", "pulse_ani", "pulse_veg"), mean) -> avg_pulse
write.csv(avg_pulse, "avg_pulse.csv")

#Add Skimmed Yoghurt 
new_data%>%
  mutate(new_data, skimmed_yoghurt=ifelse(nevocode %in% c(284,301,2245,2822), new_data$cons_qty, 0),
         prot_skimmed_yoghurt= ifelse(nevocode %in% c(284,301,2245,2822), new_data$prot, 0),
         skimmed_yoghurt_ani = ifelse(nevocode %in% c(284,301,2245,2822), new_data$prot_ani,0),
         skimmed_yoghurt_veg = ifelse(nevocode %in% c(284,301,2245,2822), new_data$prot_veg, 0)) -> skimmed_yoghurt

skimmed_yoghurt%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("skimmed_yoghurt", "prot_skimmed_yoghurt", "skimmed_yoghurt_ani", "skimmed_yoghurt_veg"), sum) -> n2_skimmed_yoghurt
write.csv(n2_skimmed_yoghurt, "n2_skimmed_yoghurt.csv")

skimmed_yoghurt%>%
  group_by(p_id)%>%
  summarise_at(c("skimmed_yoghurt", "prot_skimmed_yoghurt", "skimmed_yoghurt_ani", "skimmed_yoghurt_veg"), mean) -> avg_skimmed_yoghurt
write.csv(avg_skimmed_yoghurt, "avg_skimmed_yoghurt.csv")

##Add Semi skimmed Yoghurt 
new_data%>%
  mutate(new_data, semi_skimmed_yoghurt=ifelse(nevocode %in% c(917,1502,1721,1829,2501), new_data$cons_qty, 0),
         prot_semi_skimmed_yoghurt= ifelse(nevocode %in% c(917,1502,1721,1829,2501), new_data$prot, 0),
         semi_skimmed_yoghurt_ani = ifelse(nevocode %in% c(917,1502,1721,1829,2501), new_data$prot_ani,0),
         semi_skimmed_yoghurt_veg = ifelse(nevocode %in% c(917,1502,1721,1829,2501), new_data$prot_veg, 0)) -> semi_skimmed_yoghurt

semi_skimmed_yoghurt%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("semi_skimmed_yoghurt", "prot_semi_skimmed_yoghurt", "semi_skimmed_yoghurt_ani", "semi_skimmed_yoghurt_veg"), sum) -> n2_semi_skimmed_yoghurt
write.csv(n2_semi_skimmed_yoghurt, "n2_semi_skimmed_yoghurt.csv")

semi_skimmed_yoghurt%>%
  group_by(p_id)%>%
  summarise_at(c("semi_skimmed_yoghurt", "prot_semi_skimmed_yoghurt", "semi_skimmed_yoghurt_ani", "semi_skimmed_yoghurt_veg"), mean) -> avg_semi_skimmed_yoghurt
write.csv(avg_semi_skimmed_yoghurt, "avg_semi_skimmed_yoghurt.csv")

###Add the Drink Yoghurt 
new_data%>%
  mutate(new_data, drink_yoghurt=ifelse(nevocode %in% c(657,1831,1832,1834,2023,2038,2039,2253,2254,
                                                        2255,2256,2257,2258,2265,2308,2310,2502,2597,2655,
                                                        2689,2936,2940,2941,3005,1813,1813), new_data$cons_qty, 0),
         prot_drink_yoghurt= ifelse(nevocode %in% c(657,1831,1832,1834,2023,2038,2039,2253,2254,
                                                    2255,2256,2257,2258,2265,2308,2310,2502,2597,2655,
                                                    2689,2936,2940,2941,3005,1813,1813), new_data$prot, 0),
         drink_yoghurt_ani = ifelse(nevocode %in% c(657,1831,1832,1834,2023,2038,2039,2253,2254,
                                                    2255,2256,2257,2258,2265,2308,2310,2502,2597,2655,
                                                    2689,2936,2940,2941,3005,1813,1813), new_data$prot_ani,0),
         drink_yoghurt_veg = ifelse(nevocode %in% c(657,1831,1832,1834,2023,2038,2039,2253,2254,
                                                    2255,2256,2257,2258,2265,2308,2310,2502,2597,2655,
                                                    2689,2936,2940,2941,3005,1813,1813), new_data$prot_veg, 0)) -> drink_yoghurt

drink_yoghurt%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("drink_yoghurt", "prot_drink_yoghurt", "drink_yoghurt_ani", "drink_yoghurt_veg"), sum) -> n2_drink_yoghurt
write.csv(n2_drink_yoghurt, "n2_drink_yoghurt.csv")

drink_yoghurt%>%
  group_by(p_id)%>%
  summarise_at(c("drink_yoghurt", "prot_drink_yoghurt", "drink_yoghurt_ani", "drink_yoghurt_veg"), mean) -> avg_drink_yoghurt
write.csv(avg_drink_yoghurt, "avg_drink_yoghurt.csv")

###Add the whole Yoghurt 

new_data%>%
  mutate(new_data, whole_yoghurt=ifelse(nevocode %in% c(278,300,863,2823,2278,2503), new_data$cons_qty, 0),
         prot_whole_yoghurt= ifelse(nevocode %in% c(278,300,863,2823,2278,2503), new_data$prot, 0),
         whole_yoghurt_ani = ifelse(nevocode %in% c(278,300,863,2823,2278,2503), new_data$prot_ani,0),
         whole_yoghurt_veg = ifelse(nevocode %in% c(278,300,863,2823,2278,2503), new_data$prot_veg, 0)) -> whole_yoghurt

whole_yoghurt%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("whole_yoghurt", "prot_whole_yoghurt", "whole_yoghurt_ani", "whole_yoghurt_veg"), sum) -> n2_whole_yoghurt
write.csv(n2_whole_yoghurt, "n2_whole_yoghurt.csv")

whole_yoghurt%>%
  group_by(p_id)%>%
  summarise_at(c("whole_yoghurt", "prot_whole_yoghurt", "whole_yoghurt_ani", "whole_yoghurt_veg"), mean) -> avg_whole_yoghurt
write.csv(avg_whole_yoghurt, "avg_whole_yoghurt.csv")

#Add the Mushroom 
new_data%>%
  mutate(mushroom=ifelse(new_data$group==2 & new_data$subgroup1==5,  new_data$cons_qty, 0),
         prot_mushroom= ifelse(new_data$group==2 & new_data$subgroup1==5, new_data$prot,0), 
         mushroom_ani= ifelse(new_data$group==2 & new_data$subgroup1==5,new_data$prot_ani,0),
         mushroom_veg = ifelse(new_data$group==2 & new_data$subgroup1==5, new_data$prot_veg,0))-> mushroom


mushroom%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("mushroom", "prot_mushroom", "mushroom_ani", "mushroom_veg"), sum) -> n2_mushroom
write.csv(n2_mushroom, "n2_mushroom.csv")

n2_mushroom%>%
  group_by(p_id)%>%
  summarise_at(c("mushroom", "prot_mushroom", "mushroom_ani", "mushroom_veg"), mean) -> avg_mushroom
write.csv(avg_mushroom, "mushroom.csv")

##Add the Bread 
new_data%>%
  mutate(bread=ifelse(new_data$group==6 & new_data$subgroup1==3,  new_data$cons_qty, 0),
         prot_bread= ifelse(new_data$group==6 & new_data$subgroup1==3, new_data$prot,0), 
         bread_ani= ifelse(new_data$group==6 & new_data$subgroup1==3,new_data$prot_ani,0),
         bread_veg = ifelse(new_data$group==6 & new_data$subgroup1==3, new_data$prot_veg,0))-> bread


bread%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("bread", "prot_bread", "bread_ani", "bread_veg"), sum) -> n2_bread
write.csv(n2_bread, "n2_bread.csv")

n2_bread%>%
  group_by(p_id)%>%
  summarise_at(c("bread", "prot_bread", "bread_ani", "bread_veg"), mean) -> avg_bread
write.csv(avg_bread, "bread.csv")

#Add Milk 
new_data%>%
  mutate(milk=ifelse(new_data$group==5 & new_data$subgroup1==1,  new_data$cons_qty, 0),
         prot_milk= ifelse(new_data$group==5 & new_data$subgroup1==1, new_data$prot,0), 
         milk_ani= ifelse(new_data$group==5 & new_data$subgroup1==1,new_data$prot_ani,0),
         milk_veg = ifelse(new_data$group==5 & new_data$subgroup1==1, new_data$prot_veg,0))-> milk


milk%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("milk", "prot_milk", "milk_ani", "milk_veg"), sum) -> n2_milk
write.csv(n2_milk, "n2_milk.csv")

n2_milk%>%
  group_by(p_id)%>%
  summarise_at(c("milk", "prot_milk", "milk_ani", "milk_veg"), mean) -> avg_milk
write.csv(avg_milk, "milk.csv")

#Add the Yoghurt 
new_data%>%
  mutate(yoghurt=ifelse(new_data$group==5 & new_data$subgroup1==3,  new_data$cons_qty, 0),
         prot_yoghurt= ifelse(new_data$group==5 & new_data$subgroup1==3, new_data$prot,0), 
         yoghurt_ani= ifelse(new_data$group==5 & new_data$subgroup1==3,new_data$prot_ani,0),
         yoghurt_veg = ifelse(new_data$group==5 & new_data$subgroup1==3, new_data$prot_veg,0))-> yoghurt


yoghurt%>%
  group_by(p_id, mDay)%>%
  summarise_at(c("yoghurt", "prot_yoghurt", "yoghurt_ani", "yoghurt_veg"), sum) -> n2_yoghurt
write.csv(n2_yoghurt, "n2_yoghurt.csv")

n2_yoghurt%>%
  group_by(p_id)%>%
  summarise_at(c("yoghurt", "prot_yoghurt", "yoghurt_ani", "yoghurt_veg"), mean) -> avg_yoghurt
write.csv(avg_yoghurt, "yoghurt.csv")



#For 2003 #####
#Now Compute each protein class 
#Nuts and seeds 

new_data%>%
  mutate(new_data, nuts_and_seeds=ifelse(nevo_code %in% c(198,199,200,201,203,204,205,206,207,546,621,838,867,
                                                         872,876,1895,1896,1935,2048,2176,2345,2805,2806,2844,
                                                         2886,2887,3378,3446,3447,5049,5050,5110,5111,5112,5113,5158,5404), new_data$CONS_QTY, 0),
         prot_nuts_and_seeds= ifelse(nevo_code %in% c(198,199,200,201,203,204,205,206,207,546,621,838,867,
                                                     872,876,1895,1896,1935,2048,2176,2345,2805,2806,2844,
                                                     2886,2887,3378,3446,3447,5049,5050,5110,5111,5112,5113,5158,5404), new_data$PROT, 0)) -> nuts_and_seeds

nuts_and_seeds%>%
  group_by(p_id, mday)%>%
  summarise_at(c("nuts_and_seeds", "prot_nuts_and_seeds"), sum) -> n2_nuts_and_seeds
write.csv(n2_nuts_and_seeds, "n2_nuts_and_seeds.csv")

n2_nuts_and_seeds%>%
  group_by(p_id)%>%
  summarise_at(c("nuts_and_seeds", "prot_nuts_and_seeds"), mean) -> avg_nuts_and_seeds
write.csv(avg_nuts_and_seeds, "avg_nuts_and_seeds.csv")


#Add cereals 

new_data%>%
  mutate(new_data, cereals=ifelse(nevo_code %in% c(1890,2158,811,439,231,590,868), new_data$CONS_QTY, 0),
         prot_cereals= ifelse(nevo_code %in% c(1890,2158,811,439,231,590,868), new_data$PROT, 0)) -> cereals

cereals%>%
  group_by(p_id, mday)%>%
  summarise_at(c("cereals", "prot_cereals"), sum) -> n2_cereals
write.csv(n2_cereals, "n2_cereals.csv")

n2_cereals%>%
  group_by(p_id)%>%
  summarise_at(c("cereals", "prot_cereals"), mean) -> avg_cereals
write.csv(avg_cereals, "cereals.csv")


#Add Cheese Spread
new_data%>%
  mutate(new_data, cheese_spread=ifelse(nevo_code %in% c(304,654,718,1489,1650,1955,2517), new_data$CONS_QTY, 0),
         prot_cheese_spread= ifelse(nevo_code %in% c(304,654,718,1489,1650,1955,2517), new_data$PROT, 0)) -> cheese_spread

cheese_spread%>%
  group_by(p_id, mday)%>%
  summarise_at(c("cheese_spread", "prot_cheese_spread"), sum) -> n2_cheese_spread
write.csv(n2_cheese_spread, "n2_cheese_spread.csv")

n2_cheese_spread%>%
  group_by(p_id)%>%
  summarise_at(c("cheese_spread", "prot_cheese_spread"), mean) -> avg_cheese_spread
write.csv(avg_cheese_spread, "avg_cheese_spread.csv")


#Add Cheese Plus
new_data%>%
  mutate(new_data, cheese_plus=ifelse(nevo_code %in% c(1103,1111,1382,1723,1727,517,514,2264,3164,3155,3163,927,2516), new_data$CONS_QTY, 0),
         prot_cheese_plus= ifelse(nevo_code %in% c(1103,1111,1382,1723,1727,517,514,2264,3164,3155,3163,927,2516), new_data$PROT, 0)) -> cheese_plus

cheese_plus%>%
  group_by(p_id, mday)%>%
  summarise_at(c("cheese_plus", "prot_cheese_plus"), sum) -> n2_cheese_plus
write.csv(n2_cheese_plus, "n2_cheese_plus.csv")

n2_cheese_plus%>%
  group_by(p_id)%>%
  summarise_at(c("cheese_plus", "prot_cheese_plus"), mean) -> avg_cheese_plus
write.csv(avg_cheese_plus, "avg_cheese_plus.csv")

#Add Cheese 
new_data%>%
  mutate(cheese=ifelse(new_data$GROUP==5 & new_data$SUBGROUP1==5, new_data$CONS_QTY, 0),
         prot_cheese= ifelse(new_data$GROUP==5 & new_data$SUBGROUP1==5, new_data$PROT,0))-> cheese


cheese%>%
  group_by(p_id, mday)%>%
  summarise_at(c("cheese", "prot_cheese"), sum) -> n2_cheese
write.csv(n2_cheese, "n2_cheese.csv")

n2_cheese%>%
  group_by(p_id)%>%
  summarise_at(c("cheese", "prot_cheese"), mean) -> avg_cheese
write.csv(avg_cheese, "avg_cheese.csv")



#Add Pork Separately
new_data%>%
  mutate(pork=ifelse(new_data$GROUP==7 & new_data$SUBGROUP1==1 & SUBGROUP2==3, new_data$CONS_QTY, 0),
         prot_pork= ifelse(new_data$GROUP==7 & new_data$SUBGROUP1==1 & SUBGROUP2==3, new_data$PROT,0))-> pork


pork%>%
  group_by(p_id, mday)%>%
  summarise_at(c("pork", "prot_pork"), sum) -> n2_pork
write.csv(n2_pork, "n2_pork.csv")

n2_pork%>%
  group_by(p_id)%>%
  summarise_at(c("pork", "prot_pork"), mean) -> avg_pork
write.csv(avg_pork, "avg_pork.csv")


#Add Veal Separately
new_data%>%
  mutate(veal=ifelse(new_data$GROUP==7 & new_data$SUBGROUP1==1 & SUBGROUP2==2, new_data$CONS_QTY, 0),
         prot_veal= ifelse(new_data$GROUP==5 & new_data$SUBGROUP1==1 & SUBGROUP2==2, new_data$PROT,0))-> veal


veal%>%
  group_by(p_id, mday)%>%
  summarise_at(c("veal", "prot_veal"), sum) -> n2_veal
write.csv(n2_veal, "n2_veal.csv")

n2_veal%>%
  group_by(p_id)%>%
  summarise_at(c("veal", "prot_veal"), mean) -> avg_veal
write.csv(avg_veal, "avg_veal.csv")


#Add Eggs 
new_data%>%
  mutate(new_data, eggs=ifelse(nevo_code %in% c(83,84,85,86,87,358,1314,2769,2770,2771,2772,2773,2774), new_data$CONS_QTY, 0),
         prot_eggs= ifelse(nevo_code %in% c(83,84,85,86,87,358,1314,2769,2770,2771,2772,2773,2774), new_data$PROT, 0)) -> eggs

eggs%>%
  group_by(p_id, mday)%>%
  summarise_at(c("eggs", "prot_eggs"), sum) -> n2_eggs
write.csv(n2_eggs, "n2_eggs.csv")

n2_eggs%>%
  group_by(p_id)%>%
  summarise_at(c("eggs", "prot_eggs"), mean) -> avg_eggs
write.csv(avg_eggs, "avg_eggs.csv")

#Add Fish 
new_data%>%
  mutate(new_data, fish=ifelse(nevo_code %in% c(111,112,113,114,116,347,348,349,350,351,352,353,354,355,356,357,602,603,604,702,703,813,814,815,817,818,819,820,822,918,919,1096,1097,1098,1100,1101,1255,1310,1315,1583,1584,1585,1586,1587,1588,1589,1590,1605,1607,1608,1609,1610,1611,1612,1613,1614,1615,1616,1617,1618,
                                               1619,1620,1621,1622,1623,1624,1625,1627,1628,1629,1630,1631,1632,1899,2296,2297,2298,2299,2765,2947,3070,3071,3137,3199,3252,3256,3318,3319,3320,3321,3322,
                                               5265,5266,5326,5342), new_data$CONS_QTY, 0),
         prot_fish= ifelse(nevo_code %in% c(111,112,113,114,116,347,348,349,350,351,352,353,354,355,356,357,602,603,604,702,703,813,814,815,817,818,819,820,822,918,919,1096,1097,1098,1100,1101,1255,1310,1315,1583,1584,1585,1586,1587,1588,1589,1590,1605,1607,1608,1609,1610,1611,1612,1613,1614,1615,1616,1617,1618,
                                           1619,1620,1621,1622,1623,1624,1625,1627,1628,1629,1630,1631,1632,1899,2296,2297,2298,2299,2765,2947,3070,3071,3137,3199,3252,3256,3318,3319,3320,3321,3322,
                                           5265,5266,5326,5342), new_data$PROT, 0)) -> fish

fish%>%
  group_by(p_id, mday)%>%
  summarise_at(c("fish", "prot_fish"), sum) -> n2_fish
write.csv(n2_fish, "n2_fish.csv")

n2_fish%>%
  group_by(p_id)%>%
  summarise_at(c("fish", "prot_fish"), mean) -> avg_fish
write.csv(avg_fish, "avg_fish.csv")


#Add meats 
new_data%>%
  mutate(meats=ifelse(new_data$GROUP==7, new_data$CONS_QTY, 0),
         prot_meats= ifelse(new_data$GROUP==7, new_data$PROT,0))-> meats


meats%>%
  group_by(p_id, mday)%>%
  summarise_at(c("meats", "prot_meats"), sum) -> n2_meats
write.csv(n2_meats, "n2_meats.csv")

n2_meats%>%
  group_by(p_id)%>%
  summarise_at(c("meats", "prot_meats"), mean) -> avg_meats
write.csv(avg_meats, "avg_meats.csv")

#Add the Poultry 
new_data%>%
  mutate(poultry=ifelse(new_data$GROUP==7 & new_data$SUBGROUP1==2,  new_data$CONS_QTY, 0),
         prot_poultry= ifelse(new_data$GROUP==7 & new_data$SUBGROUP1==2, new_data$PROT,0))-> poultry


poultry%>%
  group_by(p_id, mday)%>%
  summarise_at(c("poultry", "prot_poultry"), sum) -> n2_poultry
write.csv(n2_poultry, "n2_poultry.csv")

n2_poultry%>%
  group_by(p_id)%>%
  summarise_at(c("poultry", "prot_poultry"), mean) -> avg_poultry
write.csv(avg_poultry, "avg_poultry.csv")

#Add Beef to it 
new_data%>%
  mutate(beef=ifelse(new_data$GROUP==7 & new_data$SUBGROUP1==1 & new_data$SUBGROUP2==1,  new_data$CONS_QTY, 0),
         prot_beef= ifelse(new_data$GROUP==7 & new_data$SUBGROUP1==1 & new_data$SUBGROUP2==1, new_data$PROT,0))-> beef


beef%>%
  group_by(p_id, mday)%>%
  summarise_at(c("beef", "prot_beef"), sum) -> n2_beef
write.csv(n2_beef, "n2_beef.csv")

n2_beef%>%
  group_by(p_id)%>%
  summarise_at(c("beef", "prot_beef"), mean) -> avg_beef
write.csv(avg_beef, "avg_beef.csv")

#Add processed Meats 
new_data%>%
  mutate(processed_meats=ifelse(new_data$GROUP==7 & new_data$SUBGROUP1==4,  new_data$CONS_QTY, 0),
         prot_processed_meats= ifelse(new_data$GROUP==7 & new_data$SUBGROUP1==4, new_data$PROT,0))-> processed_meats


processed_meats%>%
  group_by(p_id, mday)%>%
  summarise_at(c("processed_meats", "prot_processed_meats"), sum) -> n2_processed_meats
write.csv(n2_processed_meats, "n2_processed_meats.csv")

n2_processed_meats%>%
  group_by(p_id)%>%
  summarise_at(c("processed_meats", "prot_processed_meats"), mean) -> avg_processed_meats
write.csv(avg_processed_meats, "avg_processed_meats.csv")

#Add veal and Pork 
new_data%>%
  mutate(new_data, veal_and_pork=ifelse(nevo_code %in% c(1436,1437,1673,3016,3017,3019,1418,1419,1420,1421,1422,1424,1425,1427,1428,1429,1430,1431,1667,1668,1788,1790,2340,3024,3027,3031), new_data$CONS_QTY, 0),
         prot_veal_and_pork= ifelse(nevo_code %in% c(1436,1437,1673,3016,3017,3019,1418,1419,1420,1421,1422,1424,1425,1427,1428,1429,1430,1431,1667,1668,1788,1790,2340,3024,3027,3031), new_data$PROT, 0)) -> veal_and_pork

veal_and_pork%>%
  group_by(p_id, mday)%>%
  summarise_at(c("veal_and_pork", "prot_veal_and_pork"), sum) -> n2_veal_and_pork
write.csv(n2_veal_and_pork, "n2_veal_and_pork.csv")

n2_veal_and_pork%>%
  group_by(p_id)%>%
  summarise_at(c("veal_and_pork", "prot_veal_and_pork"), mean) -> avg_veal_and_pork
write.csv(avg_veal_and_pork, "avg_veal_and_pork.csv")

#Add Other Red Meats 
new_data%>%
  mutate(new_data, other_red_meats=ifelse(nevo_code %in% c(99,1444,1445,1675,2057,2058,95,1900,2089,107), new_data$CONS_QTY, 0),
         prot_other_red_meats= ifelse(nevo_code %in% c(99,1444,1445,1675,2057,2058,95,1900,2089,107), new_data$PROT, 0)) -> other_red_meats

other_red_meats%>%
  group_by(p_id, mday)%>%
  summarise_at(c("other_red_meats", "prot_other_red_meats"), sum) -> n2_other_red_meats
write.csv(n2_other_red_meats, "n2_other_red_meats.csv")

other_red_meats%>%
  group_by(p_id)%>%
  summarise_at(c("other_red_meats", "prot_other_red_meats"), mean) -> avg_other_red_meats
write.csv(avg_other_red_meats, "avg_other_red_meats.csv")

#Add Other White meats 
new_data%>%
  mutate(new_data, other_white_meats=ifelse(nevo_code %in% c(106,109,107,339,109,110,106,320,337), new_data$CONS_QTY, 0),
         prot_other_white_meats= ifelse(nevo_code %in% c(106,109,107,339,109,110,106,320,337), new_data$PROT, 0)) -> other_white_meats

other_white_meats%>%
  group_by(p_id, mday)%>%
  summarise_at(c("other_white_meats", "prot_other_white_meats"), sum) -> n2_other_white_meats
write.csv(n2_other_white_meats, "n2_other_white_meats.csv")

other_white_meats%>%
  group_by(p_id)%>%
  summarise_at(c("other_white_meats", "prot_other_white_meats"), mean) -> avg_other_white_meats
write.csv(avg_other_white_meats, "avg_other_white_meats.csv")

#Add Chicken and turkey 
new_data%>%
  mutate(new_data, chicken_turkey=ifelse(nevo_code %in% c(108,1305,1392,1634,1642,2090,2341,2342,2364,330,1936,
                                                         2364), new_data$CONS_QTY, 0),
         prot_chicken_turkey= ifelse(nevo_code %in% c(108,1305,1392,1634,1642,2090,2341,2342,2364,330,1936,
                                                     2364), new_data$PROT, 0)) -> chicken_turkey

chicken_turkey%>%
  group_by(p_id, mday)%>%
  summarise_at(c("chicken_turkey", "prot_chicken_turkey"), sum) -> n2_chicken_turkey
write.csv(n2_chicken_turkey, "n2_chicken_turkey.csv")

chicken_turkey%>%
  group_by(p_id)%>%
  summarise_at(c("chicken_turkey", "prot_chicken_turkey"), mean) -> avg_chicken_turkey
write.csv(avg_chicken_turkey, "avg_chicken_turkey.csv")


####Add Meats and Diary Subs 
new_data%>%
  mutate(new_data, meat_diary_subs=ifelse(nevo_code %in% c(274, 291555, 687,688, 870, 871,1094,1380, 1381, 1458,1511,1512,1602, 1953,2030,2031,2046,2047,2261,2262,2282, 2285,2286, 2433, 2541, 2542,2544, 2690, 2858, 2888, 2939, 2951, 
                                                          2994,3040, 2041, 3176, 3180,5088,5101,5114,5116,5119,5144,5247), new_data$CONS_QTY, 0),
         prot_meat_diary_subs= ifelse(nevo_code %in% c(274, 291555, 687,688, 870, 871,1094,1380, 1381, 1458,1511,1512,1602, 1953,2030,2031,2046,2047,2261,2262,2282, 2285,2286, 2433, 2541, 2542,2544, 2690, 2858, 2888, 2939, 2951, 
                                                      2994,3040, 2041, 3176, 3180,5088,5101,5114,5116,5119,5144,5247), new_data$PROT, 0)) -> meat_diary_subs

meat_diary_subs%>%
  group_by(p_id, mday)%>%
  summarise_at(c("meat_diary_subs", "prot_meat_diary_subs"), sum) -> n2_meat_diary_subs
write.csv(n2_meat_diary_subs, "n2_meat_diary_subs.csv")

meat_diary_subs%>%
  group_by(p_id)%>%
  summarise_at(c("meat_diary_subs", "prot_meat_diary_subs"), mean) -> avg_meat_diary_subs
write.csv(avg_meat_diary_subs, "avg_meat_diary_subs.csv")


#### Add Skimmed Milks 
new_data%>%
  mutate(new_data, skimmed_milk=ifelse(nevo_code %in% c(286,294,295,2725,1719,286,1719,3240,5235,285), new_data$CONS_QTY, 0),
         prot_skimmed_milk= ifelse(nevo_code %in% c(286,294,295,2725,1719,286,1719,3240,5235,285), new_data$PROT, 0)) -> skimmed_milk

skimmed_milk%>%
  group_by(p_id, mday)%>%
  summarise_at(c("skimmed_milk", "prot_skimmed_milk"), sum) -> n2_skimmed_milk
write.csv(n2_skimmed_milk, "n2_skimmed_milk.csv")

skimmed_milk%>%
  group_by(p_id)%>%
  summarise_at(c("skimmed_milk", "prot_skimmed_milk"), mean) -> avg_skimmed_milk
write.csv(avg_skimmed_milk, "avg_skimmed_milk.csv")


#Add Butter Milk 
new_data%>%
  mutate(new_data, butter_milk=ifelse(nevo_code %in% c(289, 479), new_data$CONS_QTY, 0),
         prot_butter_milk= ifelse(nevo_code %in% c(289, 479), new_data$PROT, 0)) -> butter_milk

butter_milk%>%
  group_by(p_id, mday)%>%
  summarise_at(c("butter_milk", "prot_butter_milk"), sum) -> n2_butter_milk
write.csv(n2_butter_milk, "n2_butter_milk.csv")

butter_milk%>%
  group_by(p_id)%>%
  summarise_at(c("butter_milk", "prot_butter_milk"), mean) -> avg_butter_milk
write.csv(avg_butter_milk, "avg_butter_milk.csv")

##Add the whole milk 
new_data%>%
  mutate(new_data, whole_milk=ifelse(nevo_code %in% c(2240,296,279,5306,281,280), new_data$CONS_QTY, 0),
         prot_whole_milk= ifelse(nevo_code %in% c(2240,296,279,5306,281,280), new_data$PROT, 0)) -> whole_milk

whole_milk%>%
  group_by(p_id, mday)%>%
  summarise_at(c("whole_milk", "prot_whole_milk"), sum) -> n2_whole_milk
write.csv(n2_whole_milk, "n2_whole_milk.csv")

whole_milk%>%
  group_by(p_id)%>%
  summarise_at(c("whole_milk", "prot_whole_milk"), mean) -> avg_whole_milk
write.csv(avg_whole_milk, "avg_whole_milk.csv")

#Add the Milk BEverges 
new_data%>%
  mutate(new_data, milk_beverages=ifelse(nevo_code %in% c(272,273,279,294,479,657,862,1464,1970,2052,2053,
                                                         2259,2495,2496,2497,2500,2760,2835,2917,3004), new_data$CONS_QTY, 0),
         prot_milk_beverages= ifelse(nevo_code %in% c(272,273,279,294,479,657,862,1464,1970,2052,2053,
                                                     2259,2495,2496,2497,2500,2760,2835,2917,3004), new_data$PROT, 0)) -> milk_beverages

milk_beverages%>%
  group_by(p_id, mday)%>%
  summarise_at(c("milk_beverages", "prot_milk_beverages"), sum) -> n2_milk_beverages
write.csv(n2_milk_beverages, "n2_milk_beverages.csv")

milk_beverages%>%
  group_by(p_id)%>%
  summarise_at(c("milk_beverages", "prot_milk_beverages"), mean) -> avg_milk_beverages
write.csv(avg_milk_beverages, "avg_milk_beverages.csv")


#Add the Pulse 
new_data%>%
  mutate(new_data, pulse=ifelse(nevo_code %in% c(117,118,119,120,196,197,660,685,686,839,969,970,971,
                                                972,1095,1894,2314,3049,3073,3184,3185,3216,5167,5168,5169,5170,5171,5172,5173,5174,5175,5176,5428,5429,5430,5431), new_data$CONS_QTY, 0),
         prot_pulse= ifelse(nevo_code %in% c(117,118,119,120,196,197,660,685,686,839,969,970,971,
                                            972,1095,1894,2314,3049,3073,3184,3185,3216,5167,5168,5169,5170,5171,5172,5173,5174,5175,5176,5428,5429,5430,5431), new_data$PROT, 0)) -> pulse

pulse%>%
  group_by(p_id, mday)%>%
  summarise_at(c("pulse", "prot_pulse"), sum) -> n2_pulse
write.csv(n2_pulse, "n2_pulse.csv")

pulse%>%
  group_by(p_id)%>%
  summarise_at(c("pulse", "prot_pulse"), mean) -> avg_pulse
write.csv(avg_pulse, "avg_pulse.csv")

#Add Skimmed Yoghurt 
new_data%>%
  mutate(new_data, skimmed_yoghurt=ifelse(nevo_code %in% c(284,301,2245,2822), new_data$CONS_QTY, 0),
         prot_skimmed_yoghurt= ifelse(nevo_code %in% c(284,301,2245,2822), new_data$PROT, 0)) -> skimmed_yoghurt

skimmed_yoghurt%>%
  group_by(p_id, mday)%>%
  summarise_at(c("skimmed_yoghurt", "prot_skimmed_yoghurt"), sum) -> n2_skimmed_yoghurt
write.csv(n2_skimmed_yoghurt, "n2_skimmed_yoghurt.csv")

skimmed_yoghurt%>%
  group_by(p_id)%>%
  summarise_at(c("skimmed_yoghurt", "prot_skimmed_yoghurt"), mean) -> avg_skimmed_yoghurt
write.csv(avg_skimmed_yoghurt, "avg_skimmed_yoghurt.csv")

##Add Semi skimmed Yoghurt 
new_data%>%
  mutate(new_data, semi_skimmed_yoghurt=ifelse(nevo_code %in% c(917,1502,1721,1829,2501), new_data$CONS_QTY, 0),
         prot_semi_skimmed_yoghurt= ifelse(nevo_code %in% c(917,1502,1721,1829,2501), new_data$PROT, 0)) -> semi_skimmed_yoghurt

semi_skimmed_yoghurt%>%
  group_by(p_id, mday)%>%
  summarise_at(c("semi_skimmed_yoghurt", "prot_semi_skimmed_yoghurt"), sum) -> n2_semi_skimmed_yoghurt
write.csv(n2_semi_skimmed_yoghurt, "n2_semi_skimmed_yoghurt.csv")

semi_skimmed_yoghurt%>%
  group_by(p_id)%>%
  summarise_at(c("semi_skimmed_yoghurt", "prot_semi_skimmed_yoghurt"), mean) -> avg_semi_skimmed_yoghurt
write.csv(avg_semi_skimmed_yoghurt, "avg_semi_skimmed_yoghurt.csv")

###Add the Drink Yoghurt 
new_data%>%
  mutate(new_data, drink_yoghurt=ifelse(nevo_code %in% c(657,1831,1832,1834,2023,2038,2039,2253,2254,
                                                        2255,2256,2257,2258,2265,2308,2310,2502,2597,2655,
                                                        2689,2936,2940,2941,3005,1813,1813), new_data$CONS_QTY, 0),
         prot_drink_yoghurt= ifelse(nevo_code %in% c(657,1831,1832,1834,2023,2038,2039,2253,2254,
                                                    2255,2256,2257,2258,2265,2308,2310,2502,2597,2655,
                                                    2689,2936,2940,2941,3005,1813,1813), new_data$PROT, 0)) -> drink_yoghurt

drink_yoghurt%>%
  group_by(p_id, mday)%>%
  summarise_at(c("drink_yoghurt", "prot_drink_yoghurt"), sum) -> n2_drink_yoghurt
write.csv(n2_drink_yoghurt, "n2_drink_yoghurt.csv")

drink_yoghurt%>%
  group_by(p_id)%>%
  summarise_at(c("drink_yoghurt", "prot_drink_yoghurt"), mean) -> avg_drink_yoghurt
write.csv(avg_drink_yoghurt, "avg_drink_yoghurt.csv")

###Add the whole Yoghurt 

new_data%>%
  mutate(new_data, whole_yoghurt=ifelse(nevo_code %in% c(278,300,863,2823,2278,2503), new_data$CONS_QTY, 0),
         prot_whole_yoghurt= ifelse(nevo_code %in% c(278,300,863,2823,2278,2503), new_data$PROT, 0)) -> whole_yoghurt

whole_yoghurt%>%
  group_by(p_id, mday)%>%
  summarise_at(c("whole_yoghurt", "prot_whole_yoghurt"), sum) -> n2_whole_yoghurt
write.csv(n2_whole_yoghurt, "n2_whole_yoghurt.csv")

whole_yoghurt%>%
  group_by(p_id)%>%
  summarise_at(c("whole_yoghurt", "prot_whole_yoghurt"), mean) -> avg_whole_yoghurt
write.csv(avg_whole_yoghurt, "avg_whole_yoghurt.csv")

#Add the Mushroom 
new_data%>%
  mutate(mushroom=ifelse(new_data$GROUP==2 & new_data$SUBGROUP1==5,  new_data$CONS_QTY, 0),
         prot_mushroom= ifelse(new_data$GROUP==2 & new_data$SUBGROUP1==5, new_data$PROT,0))-> mushroom


mushroom%>%
  group_by(p_id, mday)%>%
  summarise_at(c("mushroom", "prot_mushroom"), sum) -> n2_mushroom
write.csv(n2_mushroom, "n2_mushroom.csv")

n2_mushroom%>%
  group_by(p_id)%>%
  summarise_at(c("mushroom", "prot_mushroom"), mean) -> avg_mushroom
write.csv(avg_mushroom, "mushroom.csv")

##Add the Bread 
new_data%>%
  mutate(bread=ifelse(new_data$GROUP==6 & new_data$SUBGROUP1==3,  new_data$CONS_QTY, 0),
         prot_bread= ifelse(new_data$GROUP==6 & new_data$SUBGROUP1==3, new_data$PROT,0))-> bread


bread%>%
  group_by(p_id, mday)%>%
  summarise_at(c("bread", "prot_bread"), sum) -> n2_bread
write.csv(n2_bread, "n2_bread.csv")

n2_bread%>%
  group_by(p_id)%>%
  summarise_at(c("bread", "prot_bread"), mean) -> avg_bread
write.csv(avg_bread, "bread.csv")

#Add Milk 
new_data%>%
  mutate(milk=ifelse(new_data$GROUP==5 & new_data$SUBGROUP1==1,  new_data$CONS_QTY, 0),
         prot_milk= ifelse(new_data$GROUP==5 & new_data$SUBGROUP1==1, new_data$PROT,0))-> milk


milk%>%
  group_by(p_id, mday)%>%
  summarise_at(c("milk", "prot_milk"), sum) -> n2_milk
write.csv(n2_milk, "n2_milk.csv")

n2_milk%>%
  group_by(p_id)%>%
  summarise_at(c("milk", "prot_milk"), mean) -> avg_milk
write.csv(avg_milk, "milk.csv")

#Add the Yoghurt 
new_data%>%
  mutate(yoghurt=ifelse(new_data$GROUP==5 & new_data$SUBGROUP1==3,  new_data$CONS_QTY, 0),
         prot_yoghurt= ifelse(new_data$GROUP==5 & new_data$SUBGROUP1==3, new_data$PROT,0))-> yoghurt


yoghurt%>%
  group_by(p_id, mday)%>%
  summarise_at(c("yoghurt", "prot_yoghurt"), sum) -> n2_yoghurt
write.csv(n2_yoghurt, "n2_yoghurt.csv")

n2_yoghurt%>%
  group_by(p_id)%>%
  summarise_at(c("yoghurt", "prot_yoghurt"), mean) -> avg_yoghurt
write.csv(avg_yoghurt, "yoghurt.csv")

