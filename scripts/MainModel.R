#Scripts were written in R 3.5.0.
library(classInt)
library(data.table)
library(dplyr)
library(lfe)
library(multcomp)
library(plotrix)
library(RColorBrewer)
library(readr)
library(reshape2)


#1. for 2014-2019 
data_cea <- read.csv("inputs/City_emotion_air.csv")

mod0 <- felm(anger ~ aqi+tmax+tmin+wind+sunnyr +angerlw+bindex  | cidweek + provinceyear | 0 | cid , data=data_cea)
summary(mod0)

mod1 <- felm(disgust ~aqi+tmax+tmin+wind+sunnyr+disgustlw+bindex| cidweek + provinceyear | 0 | cid , data=data_cea)
summary(mod1)

mod2 <- felm(joy ~aqi+tmax+tmin+wind+sunnyr+joylw+ bindex  | cidweek + provinceyear | 0 | cid , data=data_cea)
summary(mod2)

mod3 <- felm(sad ~ aqi+tmax+tmin+wind+sunnyr+sadlw+bindex | cidweek + provinceyear | 0 | cid , data=data_cea)
summary(mod3)

mod4 <- felm(fear ~ aqi+tmax+tmin+wind+sunnyr+fearlw+bindex | cidweek + provinceyear | 0 | cid , data=data_cea)
summary(mod4)


#2. for 2014-2016
yearlabel="20141516"
print(yearlabel)
data_cea<- read.csv(paste("inputs/group_by_years/group_",yearlabel,".csv",sep=""))

mod0 <- felm(anger ~ aqi+tmax+tmin+wind+sunnyr +angerlw+bindex  | cidweek + provinceyear | 0 | cid , data=data_cea)
summary(mod0)

mod1 <- felm(disgust ~aqi+tmax+tmin+wind+sunnyr+disgustlw+bindex| cidweek + provinceyear | 0 | cid , data=data_cea)
summary(mod1)

mod2 <- felm(joy ~aqi+tmax+tmin+wind+sunnyr+joylw+ bindex  | cidweek + provinceyear | 0 | cid , data=data_cea)
summary(mod2)

mod3 <- felm(sad ~ aqi+tmax+tmin+wind+sunnyr+sadlw+bindex | cidweek + provinceyear | 0 | cid , data=data_cea)
summary(mod3)

mod4 <- felm(fear ~ aqi+tmax+tmin+wind+sunnyr+fearlw+bindex | cidweek + provinceyear | 0 | cid , data=data_cea)
summary(mod4)

#3. for 2017-2019
yearlabel="20171819"
print(yearlabel)
data_cea<- read.csv(paste("inputs/group_by_years/group_",yearlabel,".csv",sep=""))

mod0 <- felm(anger ~ aqi+tmax+tmin+wind+sunnyr +angerlw+bindex  | cidweek + provinceyear | 0 | cid , data=data_cea)
summary(mod0)

mod1 <- felm(disgust ~aqi+tmax+tmin+wind+sunnyr+disgustlw+bindex| cidweek + provinceyear | 0 | cid , data=data_cea)
summary(mod1)

mod2 <- felm(joy ~aqi+tmax+tmin+wind+sunnyr+joylw+ bindex  | cidweek + provinceyear | 0 | cid , data=data_cea)
summary(mod2)

mod3 <- felm(sad ~ aqi+tmax+tmin+wind+sunnyr+sadlw+bindex | cidweek + provinceyear | 0 | cid , data=data_cea)
summary(mod3)

mod4 <- felm(fear ~ aqi+tmax+tmin+wind+sunnyr+fearlw+bindex | cidweek + provinceyear | 0 | cid , data=data_cea)
summary(mod4)