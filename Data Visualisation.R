#Import the dataset
library(openxlsx)
prot_ani<-read.xlsx("Animal protein.xlsx")
prot_veg<-read.xlsx("Plant Protein.xlsx")
prot_ani_age<-read.xlsx("Animal_by_gender.xlsx")
prot_veg_age<-read.xlsx("Plant Protein gender_age.xlsx")
ratio<-read.xlsx("Ratio.xlsx")
ratio_age<-read.xlsx("Protein Intake Ratio.xlsx")
prot_int_ani<-read.xlsx("test_data_ani.xlsx")
prot_int_veg<-read.xlsx("test_data_veg.xlsx")


meats<-read.xlsx("meat amounts 2007-2016.xlsx")

library(ggplot2)
library(tidyverse)

meats%>%
  ggplot(aes(fill=Meat.t))

View(prot_ani)

#Visualisation for animal protein consumed 
library(ggplot2)
meats%>%
  ggplot(aes(fill=Meat.types, y=`Habitual.Intake.(g/day)`, x=Year))+
          geom_bar(position="dodge", stat="identity") + 
          geom_col(width = 0.5, position = position_dodge(0.5))+
           theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))+
            scale_color_manual(values = c("#0073C2FF", "#EFC000FF", "#0000FF"))+
            scale_fill_manual(values = c("#0073C2FF", "#EFC000FF", "#0000FF"))






View(prot_ani_age)

library(dplyr)
library(ggplot2)
#For Total Plant Protein Consumed 
p%>%
  ggplot(aes(fill=Year, y=`Quantity(g)`, x=Plant_protein))+
  geom_bar(position="dodge", stat="identity") + 
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))+
  scale_color_manual(values = c("#0073C2FF", "#EFC000FF"))+
  scale_fill_manual(values = c("#0073C2FF", "#EFC000FF"))+coord_flip()
         

#For Animal Protein By age and gender
prot_ani_age%>%
  ggplot(aes(Animal_Protein, `Quantity(g)`, fill = Year)) +
  geom_col(position = position_stack(vjust=1, reverse = FALSE), color = "gray50") +
  scale_fill_manual(values = c("purple", "deepskyblue4")) +
  facet_grid(.~Age_Gender, switch = "x") +
  theme_bw() +
  theme(strip.placement = "outside",
        strip.background = element_blank(),
        panel.border = element_blank(),
        panel.spacing = unit(0, "points"),
        axis.line = element_line())+ 
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))


View(prot_veg_age)
#For Plant Protein By Age and Gender 
prot_veg_age%>%
  ggplot(aes(Plant_Protein, `Quantity(g)`, fill = Year)) +
  geom_col(position = position_dodge(width = 1), color = "gray50") +
  scale_fill_manual(values = c("purple", "deepskyblue4")) +
  facet_grid(.~Gender_Age, switch = "x") +
  theme_bw() +
  theme(strip.placement = "outside",
        strip.background = element_blank(),
        panel.border = element_blank(),
        panel.spacing = unit(0, "points"),
        axis.line = element_line())+ 
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))

View(ratio)
#Now for the Piechart 
ratio%>%
  ggplot (aes (x=Protein_Intake, y=`Ratio(%)`, fill=Year)) + geom_pie (stat= "identity" , width=1)


View(ratio_age)
#For the ratio age 
meats%>%
  ggplot(aes(fill=Year, y=`Habitual.Intake.(g/day)`, x=Meat.types))+
  geom_bar(position="dodge", stat="identity") + 
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))+
  scale_color_manual(values = c("#0073C2FF", "#EFC000FF", "0000FF"))+
  scale_fill_manual(values = c("#0073C2FF", "#EFC000FF", "#0000FF"))+coord_flip()




#For the Plant Ratio Now 
ratio_age%>%
  ggplot(aes(fill=Year, y=`Plant.Ratio.(%)`, x=Gender_Education_Age))+
  geom_bar(position="stack", stat="identity") + 
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))+
  scale_color_manual(values = c("#0073C2FF", "#EFC000FF", "0000FF"))+
  scale_fill_manual(values = c("#0073C2FF", "#EFC000FF", "#0000FF"))+ coord_flip()

View(prot_int_ani)

prot_int_ani%>%
  ggplot(aes(fill=Year, y=`Quantity(g)`, x=Gender_Education_Age)
  geom_bar(position="dodge", stat="identity") + 
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))+
  scale_color_manual(values = c("#0073C2FF", "#EFC000FF", "0000FF"))+
  scale_fill_manual(values = c("#0073C2FF", "#EFC000FF", "#0000FF"))+coord_flip()


prot_int_veg%>%
  ggplot(aes(fill=Year, y=`Quantity(g)`, x=Gender_Education_Age))+
  geom_bar(position="dodge", stat="identity") + 
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))+
  scale_color_manual(values = c("#0073C2FF", "#EFC000FF", "0000FF"))+
  scale_fill_manual(values = c("#0073C2FF", "#EFC000FF", "#0000FF"))+
