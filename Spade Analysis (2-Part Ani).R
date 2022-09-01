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
  n.boot = 3,
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
  n.boot = 3,
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
  spade.output.path = "7_SPADE_OUTPUT")

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
