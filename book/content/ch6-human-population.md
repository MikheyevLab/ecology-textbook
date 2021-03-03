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

# Human population growth

There is a challenge for this chapter. Coming this far in the
book you have learned a little about population growth, and
you have access to computer coding, so you are ready for
something big.

Imagine for fun that you have accepted a new job in Washington as a policy fellow with the United States Geological Survey, or USGS - one of the major research branches of the US federal government. This is not farfetched; many recent doctoral graduates land such jobs at reasonably high levels. But
suppose that your boss says she wants you to calculate what
the world's population will be in 2100. Other agencies have
done this, but she wants a separate USGS estimate, presented
in an understandable way. She can give you data from the
18th through the 21st centuries. She discloses that she is
meeting with the Secretary General of the United Nations
tomorrow and hopes you can figure it out today. You tell her
"Sure, no problem."

Are you crazy? No! The rest of this chapter will walk you
through how to it. We'll start by piecing together the parts,
as in Figure 4.4 - the orthologistic part, if there is one, and
any exponential and logistic parts as well.

## Phenomological graph

The excerpt of data you have been given includes the world's
population in billions, by year. That is all. Figure [6.1](world-population) shows
the data plotted in a phenomenological way - population
size versus year, supplemented with a curve going back 2000
years to provide perspective. The blue dots show the range
of data you will be using to project the future population,
and the black 'X' marks a great demographic transition that 
is not obvious in this graph, but that will become glaringly
so in Figure [6.3](figure-6_3).

```{code-cell} r
---
tags: ["hide-input"]
render:
  image:
    width: 600px
    alt: world-population
    classes: shadow bg-primary
  figure:
    caption: |
      World population over the past 2000 years
    name: world-population
---
suppressPackageStartupMessages({
  library(tidyverse)
}) # hide annoying messages
# data from https://ourworldindata.org/world-population-growth
worldPopulation <- read_csv("../data/WorldPopulationAnnual12000years_interpolated_HYDEandUNto2015.csv", skip = 1, col_names = c("year", "population"), col_types = "nn")
filter(worldPopulation, year > 0) %>% ggplot(aes(year, population/10^9)) + 
  geom_point() +
  geom_line() + 
  annotate(geom = "text", label = "X", y = 3.350, x = 1965, size = 9, color = "blue") +
  annotate("segment", x = 476, y = 2, xend = 476, yend = .5, colour = "blue", arrow = arrow(type = "closed", length = unit(0.02, "npc"))) +
  annotate("text", x = 476, y = 2, label = "Fall of Rome", color = "blue", angle = 90, hjust = - .1, fontface = "bold") + 
  annotate("segment", x = 476, y = 2, xend = 476, yend = .5, color = "blue", arrow = arrow(type = "closed", length = unit(0.02, "npc"))) +
  annotate("rect", xmin = c(500,500), xmax = c(1500,1500), ymin = c(.1, .1), ymax = c(0.9, 0.9), alpha=0.1, color=NA, fill="blue") + 
  annotate("text", x = 1000, y = .6, label = "Middle Ages", color = "blue", fontface = "bold") + 
  annotate("segment", x = 1666, y = 2, xend = 1666, yend = .6, colour = "blue", arrow = arrow(type = "closed", length = unit(0.02, "npc"))) +
  annotate("text", x = 1666, y = 2, label = "Great Plague of London", color = "blue", angle = 90, hjust = - .1, fontface = "bold") + 
  annotate("segment", x = 1346, y = 2, xend = 1346, yend = .6, colour = "blue", arrow = arrow(type = "closed", length = unit(0.02, "npc"))) +
  annotate("text", x = 1346, y = 2, label = "Black Death", color = "blue", angle = 90, hjust = - .1, fontface = "bold") + 
  theme_bw() + xlab(expression(paste(italic(t), ", Year"))) + ylab(expression(paste(italic(N), ", World Population (billions)"))) +
  # labs(caption = "Figure 6.1 Global human population over the past 2000 years") +
  theme(plot.caption = element_text(hjust = 0.5)) 
```

Can you project global population by simply extending
that curve? The population is clearly rising at an enormous
rate, expanding most recently from 3 billion to 7 billion in
less than half a century. Simply projecting the curve would
lead to a prediction of more than 11 billion people by the
middle of the 21th century, and more than 15 billion by the
century's end.

But such an approach is too simplistic. In one sense, the data are all contained
in that curve, but are obscured by the phenomena themselves. We need to extract
the biology inherent in the changing growth rate $r$ as well as the ecology
inherent in the changing density dependence $s$. In other words, we want to
look at data showing $1/N\,\Delta N/\Delta t$ versus $N$, as in
Figure 4.4.

Table [6.1](#tab_6_1) shows a subset of the original data, $t$ and
$N$, plus calculated values for $\Delta N$, $\Delta t$, and
$1/N\,\Delta N/\Delta t$. In row 1, for example, $\Delta N$ shows the
change in $N$ between row 1 and row 2: $ 0.795 - 0.606 = 0.189 $
billion. Likewise, $\Delta t$ in row 1 shows how many years elapse before
the time of row 2: $ 1750 - 1687 = 63 $ years. The final column in row 1
shows the value of $1/N\,\Delta N /\Delta t$: $ 1 / 0.606 \times 0.189 /
63 = 0.004950495 \dots,$ which rounds to $0.0050$. Row 21 has no deltas
because it is the last row in the table.

<a id='tab_6_1'></a>

**Table 6.1 Human population numbers for analysis.**

```{code-cell} r
---
tags: ["hide-input"]
render:
  table:
    width: 600px
name: world-pop-tab
caption: |
  World population over the past 2000 years
---

suppressPackageStartupMessages({
  library(kableExtra)
  library(IRdisplay)
}) # hide annoying messages
options(knitr.kable.NA = '') # don't plot missing values
humanPopulation <- read_tsv("../data/humans.tsv", col_types = "nn") # read in data

# assign values from the table to humanPopulation_df (human population dataframe)
humanPopulation_df <- humanPopulation %>% 
  mutate(dN = c(diff(population), NA), dT = c(diff(year), NA), rate = 1 / population * dN / dT) 

# Render as html table
humanPopulation_df %>%
  kbl(col.names = c("t (years)", "N (billions)", "$\\Delta N$", "$\\Delta t$", "$\\frac{1}{N} \\frac{\\Delta N}{\\Delta t}$"), 
    digits = c(0, 3, 3, 0, 4)) %>% 
  as.character() %>%
  display_html()
```
## Biological-ecological graph 

```{code-cell} r
---
tags: [hide-input, remove-stdout, remove-stderr]
<!-- render:
  image:
    width: 600px
    alt: observed-human
    classes: shadow bg-primary
  figure:
    caption: |
      Fig 6.2 Observed human growth rate as a function of population density through the mid-1960s (blue dots), based on the data from Table 6.1, with a line representing the average trend (green).
    name: observed-human -->
---

suppressWarnings(suppressMessages(library(ggplot2))) # hide annoying messages

ggplot(data = humanPopulation_df[0:13,],
                  aes(x = population, 
                      y = rate)) +
  geom_point(color='blue') +
  theme_bw() +
  theme(axis.title.y = element_text(angle = 0, vjust = 0.5, hjust=1)) +
  scale_x_continuous(name = expression(paste(italic("N,"), " population in billions")),
                     breaks = seq(0, 12),
                     limits = c(0, 12)) +
  scale_y_continuous(name = expression(paste(frac(1, italic("N")), " ", frac(italic("dN"), italic("dt")))),
                     breaks = seq(0, .03, by = 0.01),
                     limits = c(0, 0.03)) +
  geom_abline(slope = 0.00648, intercept = -0.001185, colour = "darkgreen") +
  annotate("text", x = 1, y = 0.028, label = expression(italic("r") == -0.001185)) + 
  annotate("text", x = 0.9, y = 0.026, label = expression(italic("s") == 0.00648)) +
  # Arrow pointing at 1962
  annotate("text", x = 0.5, y = 0.0216, label = "1962", color = "grey", hjust = - .1, fontface = "bold") + 
  annotate("segment", x = 2.1, y = 0.0216, xend = 3.12, yend = 0.0216, color = "grey",
           arrow = arrow(type = "closed", length = unit(0.02, "npc"))) +
  # Arror pointing at 1687
  annotate("text", x = 0.606, y = 0.002, label = "1687", color = "grey", hjust = - .1, fontface = "bold") + 
  annotate("segment", x = 0.606, y = 0.002, xend = 0.606, yend = 0.0042, color = "grey",
           arrow = arrow(type = "closed", length = unit(0.02, "npc"))) 

```

Figure [6.2](observed-human) plots the two green columns of
Table [6.1](#tab_6_1)  through line 12---the mid-1960s---in blue dots, with
a green line representing the average trend. A line like this can be drawn
through the points in various ways---the simplest with a ruler and pen drawing
what looks right. This one was done using a statistical "regression"
program, with $r$ the point at which the line intersects the vertical axis
and $s$ the line's slope---its $\Delta y/\Delta x$. The intrinsic
growth rate $r$ for modern, global human population is apparently negative
and the slope $s$ is unmistakably positive.

From the late 1600s to the mid 1960s, then, it's clear that the birth rate per
family was increasing as the population increased. Greater population was
*enhancing* the population's growth. Such growth is orthologistic, meaning
that the human population has been heading for a singularity for many centuries.
The singularity is not a modern phenomenon, and could conceivably have been
known before the 20th century.

The negative value of $r$, if it is real, means there is a human Allee
point. If the population were to drop below the level of the intersection with
the horizontal axis---in this projection, around two hundred million
people---the human growth rate would be negative and human populations would
decline. The Allee point demonstrates our reliance on a modern society; it
suggests that we couldn't survive with our modern systems at low population
levels---although perhaps if we went back to hunter--gatherer lifestyles, this
would change the growth curve. The Allee point thus indicates that there is a
minimum human population we must sustain to avoid extinction. We depend on each
other.

## 6.3 A global transition

In Figure [6.3](figure-6_3) we add data from the mid-1960s to the present
day. People living in the 1960s were completely unaware of
the great demographic transition that was developing. For
hundreds of years prior to this time, human populations were
stuck on an orthologistic path, with a singularity ever looming and guaranteed by the positive slope. In most of the world, however, the slope abruptly turned about and negative. Not all countries of the world turned about, but on 
average the world did. Humanity started down a logistic-like
path.

### Code to generate figure 6.3
Figure 6.3 includes the full data frame and additional best fit line. We can [modify the code for figure 2](code_cell_fig_2) as follow.

```{code-cell} r
---
tags: [hide-input, remove-stdout, remove-stderr]
<!-- render:
  image:
    width: 600px
    alt: continuation-of
    classes: shadow bg-primary
  figure:
    caption: |
      Fig 6.2 Continuation of Figure 6.2 to the present day.
    name: continuation-of -->
---
worldPopulation <- read_csv("../data/WorldPopulationAnnual12000years_interpolated_HYDEandUNto2015.csv", skip = 1,
                            col_names = c("year", "population"), col_types = "nn") %>% 
  filter(year > 0)

fig_6_3_df <- worldPopulation %>% 
  filter(year %in% c(humanPopulation_df$year, 1915, 1940, 1960:2000)) %>% 
  mutate(population = population/1000000000) %>% 
    mutate(dN = c(diff(population), NA), dT = c(diff(year), NA), rate = 1 / population * dN / dT) 

fig_6_3 <- ggplot(data = fig_6_3_df,
       aes(x = population, 
           y = rate)) +
  geom_point(color='blue') +
  geom_line() +
  theme_classic() +
  scale_x_continuous(name = expression(paste(italic("N,"), " population in billions")),
                     breaks = seq(0, 12),
                     limits = c(0, 12)) +
  scale_y_continuous(name = expression(paste(frac(1, italic("N")), " ", frac(italic("dN"), italic("dt")))),
                     breaks = seq(0, .03, by = 0.01),
                     limits = c(0, 0.03)) +
  geom_abline(slope = 0.00648, intercept = -0.001185, colour = "darkgreen") +
  annotate("text", x = 6, y = 0.01, label = expression(italic("r") == 0.03077)) + 
  annotate("text", x = 6, y = 0.007, label = expression(italic("s") == -0.00289)) +
  annotate("text", x = 1, y = 0.028, label = expression(italic("r") == -0.001185)) + 
  annotate("text", x = 0.9, y = 0.026, label = expression(italic("s") == 0.00648)) +
  # Arrow pointing at 1962
  annotate("text", x = 1.5, y = 0.0216, label = "1962", color = "grey", hjust = - .1, fontface = "bold") + 
  annotate("segment", x = 2.1, y = 0.0216, xend = 3.12, yend = 0.0216, color = "grey",
           arrow = arrow(type = "closed", length = unit(0.02, "npc"))) +
  # Arror pointing at 1687
  annotate("text", x = 0.606, y = 0.002, label = "1687", color = "grey", hjust = - .1, fontface = "bold") + 
  annotate("segment", x = 0.606, y = 0.002, xend = 0.606, yend = 0.0042, color = "grey",
           arrow = arrow(type = "closed", length = unit(0.02, "npc"))) +
  # arrows at different year
  annotate("text", x = 1.8, y = 0.005, label = "1915", color = "grey", hjust = - .1, fontface = "bold") +
  annotate("segment", x = 1.8, y = 0.005, xend = 1.8, yend = 0.0065, color = "grey",
           arrow = arrow(type = "closed", length = unit(0.02, "npc"))) +
  annotate("text", x = 2.3, y = 0.0095, label = "1940", color = "grey", hjust = - .1, fontface = "bold") +
  annotate("text", x = 3.02, y = 0.015, label = "1960", color = "grey", hjust = - .1, fontface = "bold") +
  annotate("segment", x = 3.02, y = 0.015, xend = 3.02, yend = 0.0188, color = "grey",
           arrow = arrow(type = "closed", length = unit(0.02, "npc"))) +
  # Arrow down
  geom_segment(aes(x = 3.350, y = 0.0216, xend = 8, yend = (0.03077 + 8 * -0.00289)), linetype=1, arrow=arrow(length=unit(0.4,"cm"))) + 
  geom_segment(aes(x = 3.350, y = 0.0216, xend = 10.57, yend = 0),linetype=2)

fig_6_3

```

Where the downward-sloping line crosses the horizontal axis is where population
growth would cease. From this simple $r+sN$ model, it appears that world's
population will stabilize between 10 and 12 billion. That is in line with other
recently published projections.

Prior to the 1960s there were dips in the increasing growth, with World Wars I
and II levelling the rate of increase worldwide, though population continued to
grow rapidly. The rate also fell in 1960, corresponding to extreme social
disruptions in China.

What caused this great demographic transition, averaged
over the globe? The ["Four Horsemen"](https://www.dictionary.com/browse/four--horsemen) (conquest, war, famine, and plague) commonly expected
to check human populations were not a primary cause. In
many regions birth control, became more available. Education slowed reproduction because people got married later.
Modern medicine raised survival rates, making large families unnecessary. The space program looked back at Earth and projected a fragile dot suspended in the black of space, viewed by billions. China's one-child policy had a noticeable
effect. However, so did HIV, one of the few Horsemen that
has made a noticeable comeback.

```{code-cell} r 
---
tags: [hide-input, remove-stdout, remove-stderr]
<!-- render:
  image:
    width: 600px
    alt: continuation-of
    classes: shadow bg-primary
  figure:
    caption: |
      Fig 6.2 Continuation of Figure 6.2 to the present day.
    name: continuation-of -->
---
#Data from https://ourworldindata.org/fertility-rate
owid_birth_income <- read_csv("..data/children-per-woman-fertility-rate-vs-level-of-prosperity.csv")

owid_birth_income %>% distinct(country) %>% View()

birth_income_data <- read_csv("data/ch6_fecundity_by_income.csv", 
                              col_types = "nn") 

names(owid_birth_income) <- c("country", "code", "year", "total_population", "continent", "fertility", "gdp")


representative_countries <- c("Switzerland", "Netherlands", "Sweden","France", "Germany",
                              "Australia", "New Zealand", "United States",
                              "China", "Vietnam", "Thailand", "India",
                              "South Africa", "Nigeria", "Cameroon", "Mauritius"
                              )


fig_6_4 <- owid_birth_income %>% 
  filter(!is.na(fertility),
         !is.na(gdp),
         country %in% representative_countries) %>% 
  ggplot(data = . ,
         aes(x = gdp, y = fertility, colour = country)) +
  geom_point() +
  geom_line() +
  theme_bw()


fig_6_4


```

```{figure} ../img/fig_6_4.png
---
name: figure-6_4
alt: figure-6_4
width: 600px
align: center
---
Human fecundity as a function of national per capita
income.
```
Plants and other animals have logistic growth forced upon them because of
overcrowding. In humans, however, logistic growth has been largely voluntary.
And there could be further developments in a lifetime. In many nations, birth
rates are presently below replacement rates. In fact, in all nations with a
gross national income above 16K dollars per person, the birth rate is at or
below the replacement rate of 2.1 lifetime births per female (Figure [6.4](figure_6-4)).

This change in demographic rates could conceivably allow present and future
generations to voluntarily adjust the population to whatever is desired. The new
question just may be: what is the minimum world population we dare have?

Returning to your supervisor's questions, you can now tell her that, in 2100,
the world's population will be between 10 and 12 billion. And you can say
"The other population projections are not far off. They are slightly different
from what we calculate using this method. But they use very complicated methods
so you have to cut them a little slack!"
