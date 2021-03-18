---
jupytext:
  text_representation:
    extension: .md
    format_name: myst
kernelspec:
  display_name: r
  language: r
  name: ir
---

# Modeling a single population



```{code-cell} r
:tags: ["output_scroll"]
r <- 1
s <- 0
dt <- 1
t <- 0
N <- 3
timeSteps <- 14
population <- data.frame(time = integer(), exponential = integer())

for(i in 1:timeSteps) {
  population[i, ] = c(t, N)
  dN <- (r + s * N) * N * dt
  N <- N + dN
  t <- t + dt
  
}
population
```

Orthologistic:

```{code-cell} r
:tags: ["output_scroll"]
N <- 3      # re-initialize population size
t <- 0
s <- 0.05   # note: s has changed and the other values are the same

for(i in 1:timeSteps)
{
  population[i, "orthologistic"] <- N
  dN <- (r + s * N) * N * dt
  N <- N + dN
  t <- t + dt
}
population[,c("time", "orthologistic")]
```
```{code-cell} r
---
render:
  image:
    width: 600px
    alt: fig_4_2
    classes: shadow bg-primary
  figure:
    caption: |      
      Orthologistic growth contrasted with exponential growth.
    name: fig_4_2 
tags: ["hide_input"]  
---
suppressPackageStartupMessages(library(tidyverse))
pivot_longer(population, !time, names_to = "growth type", values_to = "N") %>%
  ggplot(aes(x=time, y=N, color=`growth type`)) + geom_point() + geom_line() + 
  coord_cartesian(ylim=c(0, 1100), xlim=c(0,11)) + #limits of x and y axis, allows for out of bounds line
  scale_color_manual(values = c("blue", "red")) +
  xlab("t") + #label for x axis
  ylab("N(t)") + #label for y axis
  scale_x_continuous(breaks=c(0,1,2,3,4,5,6,7,8,9,10)) + #tick labels for x axis
  scale_y_continuous(breaks=c(0,250,500,750,1000)) #tick labels for y axis
```


```{code-cell} r
:tags: ["output_scroll"]
r <- 1
s <- -0.001
dt <- 1
t <- 0
N <- 3


for(i in 1:timeSteps)
{
  population[i, "logistic"] <- N
  dN <- (r + s * N) * N * dt
  N <- N + dN
  t <- t + dt
}
population[,c("time", "logistic")]
```

```{code-cell} r
pivot_longer(population, !time, names_to = "growth type", values_to = "N") %>%
  ggplot(aes(x=time, y=N, color=`growth type`)) + geom_point() + geom_line() + 
  coord_cartesian(ylim=c(0, 1100), xlim=c(0,11)) + #limits of x and y axis, allows for out of bounds line
  scale_color_manual(values = c("blue", "yellow","red")) +
  xlab("t") + #label for x axis
  ylab("N(t)") + #label for y axis
  scale_x_continuous(breaks=c(0,1,2,3,4,5,6,7,8,9,10)) + #tick labels for x axis
  scale_y_continuous(breaks=c(0,250,500,750,1000)) #tick labels for y axis
```
