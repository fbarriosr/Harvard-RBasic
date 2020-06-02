# installing and loading the dplyr package
install.packages("dplyr")
library(dplyr)

# adding a column with mutate
library(dslabs)
data("murders")
murders <- mutate(murders, rate = total / population * 100000)

# subsetting with filter
filter(murders, rate <= 0.71)

# selecting columns with select
new_table <- select(murders, state, region, rate)
head(new_table)
# using the pipe
murders %>% select(state, region, rate) %>% filter(rate <= 0.71)

library(dslabs)
data(heights)
options(digits = 3) 
haverage <- sum(heights$height)/length(heights$height)

mean(heights$height)
ind <- data.frame(height=heights$height > haverage )

a <-  heights %>% select(sex,height)   %>%  filter(height > haverage) %>% filter(sex == "Female") 

b <- data.frame(sex=heights$sex == "Female" )

minHeight <- min(heights$height)

match(minHeight, heights$height)

maxHeight <- max(heights$height)

x <- 50:82

sum(! (x %in% heights$height))

heights2 <-data.frame(heights,ht_cm= heights$height * 2.54)

heights2$ht_cm[18]
mean(heights2$ht_cm)

females <- data.frame(ht_cm = heights2$ht_cm,sex=heights2$sex == "Female" )
sum(females$sex)

 
a <- heights2 %>% filter(sex == "Female") 
mean(a$ht_cm)

library(tidyverse)

library(dslabs)
data(olive)
head(olive)

plot(olive$palmitic, olive$palmitoleic)

hist(olive$eicosenoic)


ggplot(olive, aes(x = region, y = palmitic )) +
  geom_boxplot()


boxplot(olive$region, olive$palmitic)












