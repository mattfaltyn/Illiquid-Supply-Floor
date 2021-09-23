##### Package Installation  
if(!require(tidyverse)) install.packages("tidyverse", repos = "http://cran.
us.r-project.org")
if(!require(caret)) install.packages("caret", repos = "http://cra
n.r-project.org")
if(!require(gridExtra)) install.packages("gridExtra", repos = "http://cran.
us.r-project.org")
if(!require(ggplot2)) install.packages("ggplot2", repos = "http://cran.
us.r-project.org")
if(!require(tidyquant)) install.packages("tidyquant", repos = "http://cran.
us.r-project.org")

##### Loading Libraries 
library(tidyverse)
library(caret)
library(gridExtra)
library(ggplot2)
library(tidyquant)

##### Prevent Scientific Notation
options(scipen=999)

##### Load Dataset 
df = read.csv("model.csv")
head(df)

##### Check if df has missing values
any(is.na(df))

##### Check if df has missing values
any(is.na(df))

##### Dataset Exploration
summary(df)

ggplot(df, aes(x = factor(Time), group = 1)) + 
  geom_line(aes(y = Price), color = "darkred") + 
  geom_line(aes(y = S2F), color="steelblue", linetype="twodash") + 
  geom_line(aes(y = I_S2F), color="gray50", linetype="dotdash") + 
  labs(y = "USD", x = "Date") + 
  scale_x_discrete(breaks = df$Time[seq(1, length(df$Time), 365)]) + 
  scale_y_continuous(trans = 'log10')