---
  title: Scatter Plots
date: 2017-09-28
---

library(Lahman)
library(sqldf)
library(ggplot2)

# extracting the data---------------------------------------------------------

query<-"SELECT playerID,sum(HR),sum(SO)
FROM Batting
GROUP BY playerID
HAVING sum(HR)>=400"

result<-sqldf(query)

# visualizing the data -------------------------------------------------------

ggplot()+
  geom_point(data=result,aes(x=career_SO,y=career_HR),size=3,color="blue"+
  ggtitle("Career Strikeouts Versus Homeruns for Great Hitters")+
  xlab("Career Strikeouts")



