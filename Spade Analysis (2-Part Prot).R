#Using the 2-PART MODEL TO CLASSIFY AND COMPUTE THE HABITUAL MEAN OF THE PROTEIN CONSUMED... 

###GEt the PROTEIN CONTRIBUTION #######

library(SPADE.RIVMNwCore)

#For Beef men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_beef ~ fp(age),
  frml.if = prot_beef ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

# Beef Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_beef ~ fp(age),
  frml.if = prot_beef ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

#Beef both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_beef ~ fp(age),
  frml.if = prot_beef ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

#For Bread men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_bread ~ fp(age),
  frml.if = prot_bread ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

# Bread Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_bread ~ fp(age),
  frml.if = prot_bread ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

#Bread both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_bread ~ fp(age),
  frml.if = prot_bread ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

#For Butter Milk men
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_butter_milk ~ fp(age),
  frml.if = prot_butter_milk ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

# Butter_milk Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_butter_milk ~ fp(age),
  frml.if = prot_butter_milk ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

#Butter_milk both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_butter_milk ~ fp(age),
  frml.if = prot_butter_milk ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")


#For Cereals for men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cereals ~ fp(age),
  frml.if = prot_cereals ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

# Cereals Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cereals ~ fp(age),
  frml.if = prot_cereals ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

#Cereals both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cereals ~ fp(age),
  frml.if = prot_cereals ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")




#For Cheese Plus 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cheese_plus ~ fp(age),
  frml.if = prot_cheese_plus ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

# Cheese Plus Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cheese_plus ~ fp(age),
  frml.if = prot_cheese_plus ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

#Cheese Plus both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cheese_plus ~ fp(age),
  frml.if = prot_cheese_plus ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

#For Cheese men 

f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cheese ~ fp(age),
  frml.if = prot_cheese ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

# Cheese Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cheese ~ fp(age),
  frml.if = prot_cheese ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

#Cheese both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cheese ~ fp(age),
  frml.if = prot_cheese ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")


#For Cheese Spread men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cheese_spread ~ fp(age),
  frml.if = prot_cheese_spread ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

# Cheese Spread Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cheese_spread ~ fp(age),
  frml.if = prot_cheese_spread ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

#Cheese Spread both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cheese_spread ~ fp(age),
  frml.if = prot_cheese_spread ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

#For Chicken Turkey men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_chicken_turkey ~ fp(age),
  frml.if = prot_chicken_turkey ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

# Chicken_turkey  Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_chicken_turkey ~ fp(age),
  frml.if = prot_chicken_turkey ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

#Chicken and Turkey both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_chicken_turkey ~ fp(age),
  frml.if = prot_chicken_turkey ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

#For Drink Yoghurt 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_drink_yoghurt ~ fp(age),
  frml.if = prot_drink_yoghurt ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

# Drink Yoghurt Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_drink_yoghurt ~ fp(age),
  frml.if = prot_drink_yoghurt ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

#Drink Yoghurt both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_drink_yoghurt ~ fp(age),
  frml.if = prot_drink_yoghurt ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")


#For Eggs men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_eggs ~ fp(age),
  frml.if = prot_eggs ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

# Eggs Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_eggs ~ fp(age),
  frml.if = prot_eggs ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

#Eggs  both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_eggs ~ fp(age),
  frml.if = prot_eggs ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")



#For Fish men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_fish ~ fp(age),
  frml.if = prot_fish ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

# Fish Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_fish ~ fp(age),
  frml.if = prot_fish ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

# Fish both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_fish ~ fp(age),
  frml.if = prot_fish ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

#For meat and diary substitutes 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_meat_diary_subs ~ fp(age),
  frml.if = prot_meat_diary_subs ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

# Meats and Diary Subs Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_meat_diary_subs ~ fp(age),
  frml.if = prot_meat_diary_subs ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

#Meat and Diary subs both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_meat_diary_subs ~ fp(age),
  frml.if = prot_meat_diary_subs ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")


#For meats men
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_meats ~ fp(age),
  frml.if = prot_meats ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

# Meats Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_meats ~ fp(age),
  frml.if = prot_meats ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

#Meats  both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_meats ~ fp(age),
  frml.if = prot_meats ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")



#For Milk men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_milk ~ fp(age),
  frml.if = prot_milk ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

# For Milk Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_milk ~ fp(age),
  frml.if = prot_milk ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

# For Milk both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_milk ~ fp(age),
  frml.if = prot_milk ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")


#For Milk Beverages 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_milk_beverages ~ fp(age),
  frml.if = prot_milk_beverages ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

# Milk Beverages Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_milk_beverages ~ fp(age),
  frml.if = prot_milk_beverages ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

#Milk Beverages both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_milk_beverages ~ fp(age),
  frml.if = prot_milk_beverages ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")



#For Nuts and seeds men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_nuts_and_seeds ~ fp(age),
  frml.if = prot_nuts_and_seeds ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

# Nuts and Seeds Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_nuts_and_seeds ~ fp(age),
  frml.if = prot_nuts_and_seeds ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

#Nuts and Seeds both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_nuts_and_seeds ~ fp(age),
  frml.if = prot_nuts_and_seeds ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")


#For Other red meats men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_other_red_meats ~ fp(age),
  frml.if = prot_other_red_meats ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

# Other Red Meats Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_other_red_meats ~ fp(age),
  frml.if = prot_other_red_meats ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

#Other Red Meats both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_other_red_meats ~ fp(age),
  frml.if = prot_other_red_meats ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")



#For Other White Meats men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_other_white_meats ~ fp(age),
  frml.if = prot_other_white_meats ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

#Other White Meats Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_other_white_meats ~ fp(age),
  frml.if = prot_other_white_meats ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

#For Other Whites Meats both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_other_white_meats ~ fp(age),
  frml.if = prot_other_white_meats ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")


#For Poultry Men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_poultry ~ fp(age),
  frml.if = prot_poultry ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

# Poultry Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_poultry ~ fp(age),
  frml.if = prot_poultry ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

#Poultry both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_poultry ~ fp(age),
  frml.if = prot_poultry ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")


#For Processed Meats men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_processed_meats ~ fp(age),
  frml.if = prot_processed_meats ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

# Processed Meats women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_processed_meats ~ fp(age),
  frml.if = prot_processed_meats ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

#Processed Meats both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_processed_meats ~ fp(age),
  frml.if = prot_processed_meats ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")


#For Pulse men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_Pulse ~ fp(age),
  frml.if = prot_Pulse ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

# Pulse Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_pulse ~ fp(age),
  frml.if = prot_pulse ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

#Pulse both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_pulse ~ fp(age),
  frml.if = prot_pulse ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")


#For Semi-Skimmed Yoghurt 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_semi_skimmed_yoghurt ~ fp(age),
  frml.if = prot_semi_skimmed_yoghurt ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

# Semi-Skimmed Yoghurt Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_semi_skimmed_yoghurt ~ fp(age),
  frml.if = prot_semi_skimmed_yoghurt ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

# Semi Skimmed Yoghurt both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_semi_skimmed_yoghurt ~ fp(age),
  frml.if = prot_semi_skimmed_yoghurt ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")



#For Skimmed Milk men
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_skimmed_milk ~ fp(age),
  frml.if = prot_skimmed_milk ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

# Skimmed Milk Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_skimmed_milk ~ fp(age),
  frml.if = prot_skimmed_milk ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

#Skimmed Milk both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_skimmed_milk ~ fp(age),
  frml.if = prot_skimmed_milk ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")


#For Skimmed Yoghurt men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_skimmed_yoghurt ~ fp(age),
  frml.if = prot_skimmed_yoghurt ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

# skimmed Yoghurt Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_skimmed_yoghurt ~ fp(age),
  frml.if = prot_skimmed_yoghurt ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

#Skimmed Yoghurt both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_skimmed_yoghurt ~ fp(age),
  frml.if = prot_skimmed_yoghurt ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")


#For Veal and Pork men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_veal_and_pork ~ fp(age),
  frml.if = prot_veal_and_pork ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

# For Veal and Pork Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_veal_and_pork ~ fp(age),
  frml.if = prot_veal_and_pork ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

#Veal and Pork both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_veal_and_pork ~ fp(age),
  frml.if = prot_veal_and_pork ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")


#For Whole Milk men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_whole_milk ~ fp(age),
  frml.if = prot_whole_milk ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

# Whole Milk Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_whole_milk ~ fp(age),
  frml.if = prot_whole_milk ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

#Whole Milk both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_whole_milk ~ fp(age),
  frml.if = prot_whole_milk ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")


#For Whole Yoghurt 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_whole_yoghurt ~ fp(age),
  frml.if = prot_whole_yoghurt ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

# For Whole Yoghurt Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_whole_yoghurt ~ fp(age),
  frml.if = prot_whole_yoghurt ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

#Whole Yoghurt both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_whole_yoghurt ~ fp(age),
  frml.if = prot_whole_yoghurt ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")


#For Yoghurt Men
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_yoghurt ~ fp(age),
  frml.if = prot_yoghurt ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

# Yoghurt Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_yoghurt ~ fp(age),
  frml.if = prot_yoghurt ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

#Yoghurt both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_yoghurt ~ fp(age),
  frml.if = prot_yoghurt ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

#For Mushroom men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_mushroom ~ fp(age),
  frml.if = prot_mushroom ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

# Mushroom Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_mushroom ~ fp(age),
  frml.if = prot_mushroom ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")

# Mushroom both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_mushroom ~ fp(age),
  frml.if = prot_mushroom ~ cs(age),
  data = new_data,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "12P_SPADE_OUTPUT")



###*****************For 2007-2010 dataset *****************#
#The dataset is changing from new_data to new_data2 and it is being saved in another directory

#For Beef men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_beef ~ fp(age),
  frml.if = prot_beef ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# Beef Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_beef ~ fp(age),
  frml.if = prot_beef ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

#Beef both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_beef ~ fp(age),
  frml.if = prot_beef ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

#For Bread men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_bread ~ fp(age),
  frml.if = prot_bread ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# Bread Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_bread ~ fp(age),
  frml.if = prot_bread ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

#Bread both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_bread ~ fp(age),
  frml.if = prot_bread ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

#For Butter Milk men
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_butter_milk ~ fp(age),
  frml.if = prot_butter_milk ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# Butter_milk Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_butter_milk ~ fp(age),
  frml.if = prot_butter_milk ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

#Butter_milk both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_butter_milk ~ fp(age),
  frml.if = prot_butter_milk ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")


#For Cereals for men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cereals ~ fp(age),
  frml.if = prot_cereals ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# Cereals Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cereals ~ fp(age),
  frml.if = prot_cereals ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

#Cereals both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cereals ~ fp(age),
  frml.if = prot_cereals ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")


#For Cheese Plus 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cheese_plus ~ fp(age),
  frml.if = prot_cheese_plus ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# Cheese Plus Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cheese_plus ~ fp(age),
  frml.if = prot_cheese_plus ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

#Cheese Plus both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cheese_plus ~ fp(age),
  frml.if = prot_cheese_plus ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

#For Cheese men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cheese ~ fp(age),
  frml.if = prot_cheese ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# Cheese Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cheese ~ fp(age),
  frml.if = prot_cheese ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

#Cheese both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cheese ~ fp(age),
  frml.if = prot_cheese ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

#For Cheese Spread men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cheese_spread ~ fp(age),
  frml.if = prot_cheese_spread ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# Cheese Spread Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cheese_spread ~ fp(age),
  frml.if = prot_cheese_spread ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

#Cheese Spread both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cheese_spread ~ fp(age),
  frml.if = prot_cheese_spread ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

#For Chicken Turkey men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_chicken_turkey ~ fp(age),
  frml.if = prot_chicken_turkey ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# Chicken_turkey  Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_chicken_turkey ~ fp(age),
  frml.if = prot_chicken_turkey ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

#Chicken and Turkey both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_chicken_turkey ~ fp(age),
  frml.if = prot_chicken_turkey ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

#For Drink Yoghurt 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_drink_yoghurt ~ fp(age),
  frml.if = prot_drink_yoghurt ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# Drink Yoghurt Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_drink_yoghurt ~ fp(age),
  frml.if = prot_drink_yoghurt ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

#Drink Yoghurt both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_drink_yoghurt ~ fp(age),
  frml.if = prot_drink_yoghurt ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")


#For Eggs men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_eggs ~ fp(age),
  frml.if = prot_eggs ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# Eggs Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_eggs ~ fp(age),
  frml.if = prot_eggs ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

#Eggs  both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_eggs ~ fp(age),
  frml.if = prot_eggs ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")



#For Fish men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_fish ~ fp(age),
  frml.if = prot_fish ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# Fish Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_fish ~ fp(age),
  frml.if = prot_fish ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# Fish both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_fish ~ fp(age),
  frml.if = prot_fish ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

#For meat and diary substitutes 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_meat_diary_subs ~ fp(age),
  frml.if = prot_meat_diary_subs ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# Meats and Diary Subs Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_meat_diary_subs ~ fp(age),
  frml.if = prot_meat_diary_subs ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

#Meat and Diary subs both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_meat_diary_subs ~ fp(age),
  frml.if = prot_meat_diary_subs ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")


#For meats men
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_meats ~ fp(age),
  frml.if = prot_meats ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# Meats Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_meats ~ fp(age),
  frml.if = prot_meats ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

#Meats  both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_meats ~ fp(age),
  frml.if = prot_meats ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")



#For Milk men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_milk ~ fp(age),
  frml.if = prot_milk ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# For Milk Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_milk ~ fp(age),
  frml.if = prot_milk ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# For Milk both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_milk ~ fp(age),
  frml.if = prot_milk ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")


#For Milk Beverages 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_milk_beverages ~ fp(age),
  frml.if = prot_milk_beverages ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# Milk Beverages Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_milk_beverages ~ fp(age),
  frml.if = prot_milk_beverages ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

#Milk Beverages both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_milk_beverages ~ fp(age),
  frml.if = prot_milk_beverages ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")



#For Nuts and seeds men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_nuts_and_seeds ~ fp(age),
  frml.if = prot_nuts_and_seeds ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# Nuts and Seeds Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_nuts_and_seeds ~ fp(age),
  frml.if = prot_nuts_and_seeds ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

#Nuts and Seeds both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_nuts_and_seeds ~ fp(age),
  frml.if = prot_nuts_and_seeds ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")


#For Other red meats men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_other_red_meats ~ fp(age),
  frml.if = prot_other_red_meats ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# Other Red Meats Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_other_red_meats ~ fp(age),
  frml.if = prot_other_red_meats ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

#Other Red Meats both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_other_red_meats ~ fp(age),
  frml.if = prot_other_red_meats ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")



#For Other White Meats men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_other_white_meats ~ fp(age),
  frml.if = prot_other_white_meats ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# Other White Meats Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_other_white_meats ~ fp(age),
  frml.if = prot_other_white_meats ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

#For Other Whites Meats both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_other_white_meats ~ fp(age),
  frml.if = prot_other_white_meats ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")


#For Poultry Men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_poultry ~ fp(age),
  frml.if = prot_poultry ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# Poultry Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_poultry ~ fp(age),
  frml.if = prot_poultry ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

#Poultry both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_poultry ~ fp(age),
  frml.if = prot_poultry ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")


#For Processed Meats men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_processed_meats ~ fp(age),
  frml.if = prot_processed_meats ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# Processed Meats women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_processed_meats ~ fp(age),
  frml.if = prot_processed_meats ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

#Processed Meats both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_processed_meats ~ fp(age),
  frml.if = prot_processed_meats ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")


#For Pulse men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_Pulse ~ fp(age),
  frml.if = prot_Pulse ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# Pulse Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_pulse ~ fp(age),
  frml.if = prot_pulse ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

#Pulse both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_pulse ~ fp(age),
  frml.if = prot_pulse ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")


#For Semi-Skimmed Yoghurt 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_semi_skimmed_yoghurt ~ fp(age),
  frml.if = prot_semi_skimmed_yoghurt ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# Semi-Skimmed Yoghurt Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_semi_skimmed_yoghurt ~ fp(age),
  frml.if = prot_semi_skimmed_yoghurt ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# Semi Skimmed Yoghurt both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_semi_skimmed_yoghurt ~ fp(age),
  frml.if = prot_semi_skimmed_yoghurt ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")



#For Skimmed Milk men
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_skimmed_milk ~ fp(age),
  frml.if = prot_skimmed_milk ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# Skimmed Milk Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_skimmed_milk ~ fp(age),
  frml.if = prot_skimmed_milk ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

#Skimmed Milk both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_skimmed_milk ~ fp(age),
  frml.if = prot_skimmed_milk ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")


#For Skimmed Yoghurt men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_skimmed_yoghurt ~ fp(age),
  frml.if = prot_skimmed_yoghurt ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# skimmed Yoghurt Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_skimmed_yoghurt ~ fp(age),
  frml.if = prot_skimmed_yoghurt ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

#Skimmed Yoghurt both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_skimmed_yoghurt ~ fp(age),
  frml.if = prot_skimmed_yoghurt ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")


#For Veal and Pork men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_veal_and_pork ~ fp(age),
  frml.if = prot_veal_and_pork ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# For Veal and Pork Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_veal_and_pork ~ fp(age),
  frml.if = prot_veal_and_pork ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

#Veal and Pork both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_veal_and_pork ~ fp(age),
  frml.if = prot_veal_and_pork ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")


#For Whole Milk men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_whole_milk ~ fp(age),
  frml.if = prot_whole_milk ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# Whole Milk Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_whole_milk ~ fp(age),
  frml.if = prot_whole_milk ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

#Whole Milk both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_whole_milk ~ fp(age),
  frml.if = prot_whole_milk ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")


#For Whole Yoghurt 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_whole_yoghurt ~ fp(age),
  frml.if = prot_whole_yoghurt ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# For Whole Yoghurt Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_whole_yoghurt ~ fp(age),
  frml.if = prot_whole_yoghurt ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7B_SPADE_OUTPUT")

#Whole Yoghurt both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_whole_yoghurt ~ fp(age),
  frml.if = prot_whole_yoghurt ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")


#For Yoghurt Men
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_yoghurt ~ fp(age),
  frml.if = prot_yoghurt ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# Yoghurt Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_yoghurt ~ fp(age),
  frml.if = prot_yoghurt ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# Yoghurt Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_yoghurt ~ fp(age),
  frml.if = prot_yoghurt ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

#Mushroom both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_mushroom ~ fp(age),
  frml.if = prot_mushroom ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")


#For the mushroom men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_mushroom ~ fp(age),
  frml.if = prot_mushroom ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "men",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# Mushroom Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_mushroom ~ fp(age),
  frml.if = prot_mushroom ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "women",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")

# Mushroom both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_mushroom ~ fp(age),
  frml.if = prot_mushroom ~ cs(age),
  data = new_data2,
  min.age = 19,
  max.age = 69,
  sex.label = "both",
  age.classes = c(19,30, 50, 69),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog_season_wk_wknd",
  spade.output.path = "7P_SPADE_OUTPUT")


######****************2003 Datasets ****************#############


#For Beef men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_beef ~ fp(age),
  frml.if = prot_beef ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

# Beef Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_beef ~ fp(age),
  frml.if = prot_beef ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

#Beef both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_beef ~ fp(age),
  frml.if = prot_beef ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

#For Bread men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_bread ~ fp(age),
  frml.if = prot_bread ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

# Bread Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_bread ~ fp(age),
  frml.if = prot_bread ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

#Bread both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_bread ~ fp(age),
  frml.if = prot_bread ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

#For Butter Milk men
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_butter_milk ~ fp(age),
  frml.if = prot_butter_milk ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

# Butter_milk Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_butter_milk ~ fp(age),
  frml.if = prot_butter_milk ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

#Butter_milk both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_butter_milk ~ fp(age),
  frml.if = prot_butter_milk ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")


#For Cereals for men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cereals ~ fp(age),
  frml.if = prot_cereals ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

# Cereals Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cereals ~ fp(age),
  frml.if = prot_cereals ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

#Cereals both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cereals ~ fp(age),
  frml.if = prot_cereals ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

#For cheese men
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cheese ~ fp(age),
  frml.if = prot_cheese ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

# Cheese Plus Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cheese ~ fp(age),
  frml.if = prot_cheese ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

#Cheese Plus both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cheese ~ fp(age),
  frml.if = prot_cheese ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")



#For Cheese Plus 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cheese_plus ~ fp(age),
  frml.if = prot_cheese_plus ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

# Cheese Plus Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cheese_plus ~ fp(age),
  frml.if = prot_cheese_plus ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

#Cheese Plus both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cheese_plus ~ fp(age),
  frml.if = prot_cheese_plus ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

#For Cheese Spread men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cheese_spread ~ fp(age),
  frml.if = prot_cheese_spread ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

# Cheese Spread Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cheese_spread ~ fp(age),
  frml.if = prot_cheese_spread ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

#Cheese Spread both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_cheese_spread ~ fp(age),
  frml.if = prot_cheese_spread ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

#For Chicken Turkey men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_chicken_turkey ~ fp(age),
  frml.if = prot_chicken_turkey ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

# Chicken_turkey  Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_chicken_turkey ~ fp(age),
  frml.if = prot_chicken_turkey ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

#Chicken and Turkey both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_chicken_turkey ~ fp(age),
  frml.if = prot_chicken_turkey ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

#For Drink Yoghurt 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_drink_yoghurt ~ fp(age),
  frml.if = prot_drink_yoghurt ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

# Drink Yoghurt Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_drink_yoghurt ~ fp(age),
  frml.if = prot_drink_yoghurt ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

#Drink Yoghurt both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_drink_yoghurt ~ fp(age),
  frml.if = prot_drink_yoghurt ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")


#For Eggs men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_eggs ~ fp(age),
  frml.if = prot_eggs ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

# Eggs Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_eggs ~ fp(age),
  frml.if = prot_eggs ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

#Eggs  both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_eggs ~ fp(age),
  frml.if = prot_eggs ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")



#For Fish men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_fish ~ fp(age),
  frml.if = prot_fish ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

# Fish Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_fish ~ fp(age),
  frml.if = prot_fish ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

# Fish both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_fish ~ fp(age),
  frml.if = prot_fish ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

#For meat and diary substitutes 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_meat_diary_subs ~ fp(age),
  frml.if = prot_meat_diary_subs ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

# Meats and Diary Subs Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_meat_diary_subs ~ fp(age),
  frml.if = prot_meat_diary_subs ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

#Meat and Diary subs both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_meat_diary_subs ~ fp(age),
  frml.if = prot_meat_diary_subs ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")


#For meats men
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_meats ~ fp(age),
  frml.if = prot_meats ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

# Meats Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_meats ~ fp(age),
  frml.if = prot_meats ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

#Meats  both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_meats ~ fp(age),
  frml.if = prot_meats ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")



#For Milk men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_milk ~ fp(age),
  frml.if = prot_milk ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

# For Milk Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_milk ~ fp(age),
  frml.if = prot_milk ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

# For Milk both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_milk ~ fp(age),
  frml.if = prot_milk ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")


#For Milk Beverages 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_milk_beverages ~ fp(age),
  frml.if = prot_milk_beverages ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

# Milk Beverages Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_milk_beverages ~ fp(age),
  frml.if = prot_milk_beverages ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

#Milk Beverages both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_milk_beverages ~ fp(age),
  frml.if = prot_milk_beverages ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")



#For Nuts and seeds men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_nuts_and_seeds ~ fp(age),
  frml.if = prot_nuts_and_seeds ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

# Nuts and Seeds Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_nuts_and_seeds ~ fp(age),
  frml.if = prot_nuts_and_seeds ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

#Nuts and Seeds both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_nuts_and_seeds ~ fp(age),
  frml.if = prot_nuts_and_seeds ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")


#For Other red meats men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_other_red_meats ~ fp(age),
  frml.if = prot_other_red_meats ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

# Other Red Meats Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_other_red_meats ~ fp(age),
  frml.if = prot_other_red_meats ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

#Other Red Meats both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_other_red_meats ~ fp(age),
  frml.if = prot_other_red_meats ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")



#For Other White Meats men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_other_white_meats ~ fp(age),
  frml.if = prot_other_white_meats ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

# Other White Meats Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_other_white_meats ~ fp(age),
  frml.if = prot_other_white_meats ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

#For Other Whites Meats both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_other_white_meats ~ fp(age),
  frml.if = prot_other_white_meats ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")


#For Poultry Men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_poultry ~ fp(age),
  frml.if = prot_poultry ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

# Poultry Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_poultry ~ fp(age),
  frml.if = prot_poultry ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

#Poultry both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_poultry ~ fp(age),
  frml.if = prot_poultry ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")


#For Processed Meats men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_processed_meats ~ fp(age),
  frml.if = prot_processed_meats ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

# Processed Meats women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_processed_meats ~ fp(age),
  frml.if = prot_processed_meats ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

#Processed Meats both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_processed_meats ~ fp(age),
  frml.if = prot_processed_meats ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")


#For Pulse men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_Pulse ~ fp(age),
  frml.if = prot_Pulse ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

# Pulse Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_pulse ~ fp(age),
  frml.if = prot_pulse ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

#Pulse both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_pulse ~ fp(age),
  frml.if = prot_pulse ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")


#For Semi-Skimmed Yoghurt 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_semi_skimmed_yoghurt ~ fp(age),
  frml.if = prot_semi_skimmed_yoghurt ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

# Semi-Skimmed Yoghurt Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_semi_skimmed_yoghurt ~ fp(age),
  frml.if = prot_semi_skimmed_yoghurt ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

# Semi Skimmed Yoghurt both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_semi_skimmed_yoghurt ~ fp(age),
  frml.if = prot_semi_skimmed_yoghurt ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")



#For Skimmed Milk men
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_skimmed_milk ~ fp(age),
  frml.if = prot_skimmed_milk ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

# Skimmed Milk Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_skimmed_milk ~ fp(age),
  frml.if = prot_skimmed_milk ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

#Skimmed Milk both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_skimmed_milk ~ fp(age),
  frml.if = prot_skimmed_milk ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")


#For Skimmed Yoghurt men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_skimmed_yoghurt ~ fp(age),
  frml.if = prot_skimmed_yoghurt ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

# skimmed Yoghurt Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_skimmed_yoghurt ~ fp(age),
  frml.if = prot_skimmed_yoghurt ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

#Skimmed Yoghurt both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_skimmed_yoghurt ~ fp(age),
  frml.if = prot_skimmed_yoghurt ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")


#For Veal and Pork men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_veal_and_pork ~ fp(age),
  frml.if = prot_veal_and_pork ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

# For Veal and Pork Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_veal_and_pork ~ fp(age),
  frml.if = prot_veal_and_pork ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

#Veal and Pork both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_veal_and_pork ~ fp(age),
  frml.if = prot_veal_and_pork ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")


#For Whole Milk men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_whole_milk ~ fp(age),
  frml.if = prot_whole_milk ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

# Whole Milk Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_whole_milk ~ fp(age),
  frml.if = prot_whole_milk ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

#Whole Milk both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_whole_milk ~ fp(age),
  frml.if = prot_whole_milk ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")


#For Whole Yoghurt 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_whole_yoghurt ~ fp(age),
  frml.if = prot_whole_yoghurt ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

# For Whole Yoghurt Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_whole_yoghurt ~ fp(age),
  frml.if = prot_whole_yoghurt ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

#Whole Yoghurt both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_whole_yoghurt ~ fp(age),
  frml.if = prot_whole_yoghurt ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")


#For Yoghurt Men
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_yoghurt ~ fp(age),
  frml.if = prot_yoghurt ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

# Yoghurt Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_yoghurt ~ fp(age),
  frml.if = prot_yoghurt ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

#Yoghurt both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_yoghurt ~ fp(age),
  frml.if = prot_yoghurt ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

#For Mushroom men 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_mushroom ~ fp(age),
  frml.if = prot_mushroom ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "men",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

# Mushroom Women 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_mushroom ~ fp(age),
  frml.if = prot_mushroom ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "women",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")

# Mushroom both 
f.spade.bootstrap(
  FUN = f.spade,
  frml.ia = prot_mushroom ~ fp(age),
  frml.if = prot_mushroom ~ cs(age),
  data = new_data3,
  min.age = 19,
  max.age = 30,
  sex.label = "both",
  age.classes = c(19,30),
  seed = 100,
  n.boot = 3,
  weights.name = "w_demog",
  spade.output.path = "3P_SPADE_OUTPUT")




f.test.difference.with.bootstrap(
  x = "boot_spade_new_data_meats_b_19_69_array.bin",
  y = "boot_spade_new_data2_meats_b_19_69_array.bin",
  column.name = NULL,
  list.name.xy = "HI",
  alpha = 0.05,
  spade.output.path = SPADE.OUTPUT.PATH,
  bin.dir = NULL,
  output.file.name = "meat_difference_bootstrap.xlsx",
  dgts.distr = 7,
  verbose = TRUE)

