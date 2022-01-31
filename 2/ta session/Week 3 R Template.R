# ===============================================
# Author: Your TA
# Date: January 19, 2022
# Subject: Stat II, TA Session Week 2
# Description: Example data exercise
# ===============================================

# Setup-----------------------------------------------------------------

library(tidyverse)
library(dplyr)
library(magrittr)

##== clear all objects so we are working in a clean environment
rm(list=ls())

##== set the working directory
setwd("")


### Setup -----------------------------------------------------

# Load in data
df <- read.csv(file = "pset2data.csv")


### Live coding portion  ------------------------------------------------

##== Q2 - Regress KWW on educ 

lm(formula = KWW~educ, data = df) %>%
  summary()


##== Q4 - Run the regression without KWW as a control variable
summary(lm(lwage~educ, data=df))


##== Q6a- Run the regression adding KWW as a control variable
summary(lm(lwage ~ educ + KWW, data = df))



