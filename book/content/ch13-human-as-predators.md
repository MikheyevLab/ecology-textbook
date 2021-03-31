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

## Humans as predators

Early humans suffered from predators just as other primates suffer still.
Eventually, though, they developed spears longer than the longest teeth and
became one of the top predators on land. Even if they did not eat sabre-tooth
tigers, they were able to kill them. We know from vivid paintings on rock walls
in the protected shelter of caves that our ancestors at least fancied themselves
as hunters (Figure [13.1](fig_13_1)).

Humans are now the dominant large vertebrate on the planet. But on all the
continents beyond Africa, large vertebrates were prominent in the ecosystems
before our ancestors arrived. In Africa many remain, coevolved with humans and
perhaps wiser to our ways. Elsewhere, however, they had little fear when our
ancestors arrived (Figure [13.2](fig_13_2)).

```{figure} ../img/fig_13_1.jpg
---
name: fig_13_1
alt: fig_13_1
width: 600px
align: center
---
Hunter and hunted.
```

```{figure} ../img/fairuse/HuntingMoa.jpg
---
name: fig_13_2
alt: fig_13_2
width: 400px
align: center
---
Artist's conception. The Moa had no clue that the diminutive primate was aiming
a barb that would shortly pierce its heart. Unafraid and then gone.
```


The reasons behind the extinction of so many megafauna are controversial.
Archeologist   Haynes and others believe humans are responsible.
Archeologist   Grayson and others blame climate change, though
animals had been through many glaciations and deglaciations
before. Mammalogist   MacPhee and virologist Marx postulate a virulent "hyperdisease" brought by
humans. And geologist   Kennett and colleagues assign a comet
impact as the cause---an interesting theory, as some major
human hunters disappeared at about the same time as the larger mammals.


```{figure} ../img/fairuse/tuna.jpg
---
name: fig_13_3
alt: fig_13_3
width: 400px
align: center
---
The remaining mass of Earth's megafauna lives in the sea.
```

In any case, when something extreme happens, several causes may be working in
concert. We do know from historical records that only about one human lifetime
ago our predecessors in North America hunted bison almost to extinction
(Figure [12.3](fig_13_3)). Now the large remaining populations of
megafauna are in the seas. What is their fate?

### Consciously controlled predation

Consider predation by humans that is not subject to the cyclical dynamics of
natural predator--prey interactions, but is instead consciously controlled to
provide steady, reliable returns---from the world's fisheries, for example. How
is this attempted?

Recall logistic population growth, where the ecological term $s$ is negative.
Figure [13.4](fig_13_4) shows the individual growth rate on
the vertical axis and the population density on the horizontal axis, as you have
seen before. Individual growth means the same thing as growth per capita, or
relative growth, or percentage growth if multiplied by 100. The intention is to
apply this to logistically growing populations of prey.

```{figure} ../img/fig_13_4.png
---
name: fig_13_4
alt: fig_13_4
width: 400px
align: center
---
Logistic population growth, individual rate.
```

It is the growth rate of the whole population, however, that is of interest in
controlled predation---not the per capita growth rate---since it is a fraction
of the whole population that is to be taken. So the vertical axis should show
$dN/dt$ rather than $1/N\,\,dN/dt$. Start with the individual growth rate, which
reaches its maximum $r$ as $N$ approaches 0. Here the population produces very
few individuals, because the population itself is almost nonexistent.

$$ {1\over N}{dN\over dt} = r + s\,N \,.$$

The goal is to maximize the population growth rate so that the greatest number
of prey can be taken. To find that number, multiply both sides of the equation
above by the number of individuals, $N$, to get the growth rate of the entire
population---in other words, to determine how many individuals are added to the
population in a unit of time. The result is

$$ {dN\over dt} = r\,N + s\,N^2 $$

The growth of the entire population, $dN/dt$, has the shape of an inverted
parabola, shown in Figure [13.5](fig_13_5), since $s$ is
negative. Population growth is lowest when the population is very small, near 0,
or when it is high, near its carrying capacity, $-r/s$. It reaches its maximum
growth rate midway, at half the carrying capacity, $(-r/s)/2$. So if the
population is kept at half its carrying capacity, it will be growing its fastest
and the greatest amount can be "harvested" each year.

```{figure} ../img/fig_13_5.png
---
name: fig_13_5
alt: fig_13_5
width: 500px
align: center
---
Logistic population growth, population rate.
```

What is that maximum rate? To find it, substitute half the carrying capacity,
$-r/(2s)$, for $N$ in the equation above, giving

$$
    \eqalign{
      {dN\over dt}\bigg|_{\rm max}
       &= r\left(-{r\over2s}\right) + s\,\left(-{r\over2s}\right)^2 \cr
       &= -{r^2\over2s} +s\,{r^2\over4s^2} \cr
       &= -{r^2\over4s}                    \cr } 
$$

So in this theory the population grows most rapidly at rate $-r^2/(4s)$,
producing the greatest number of new individuals if drawn down to half its
carrying capacity. This has been called the "maximum sustainable yield."

```{figure} ../img/fig_13_6.png
---
name: fig_13_6
alt: fig_13_6
width: 500px
align: center
---
Fishing then and now.
```
Let us introduce a harvesting intensity, $H$. When $H$ is zero, there is no
harvesting, and when $H$ is 1, harvesting is at the maximum sustainable rate. In
between it is 

$$ {dN\over dt} = \big( r\,N +s\,N^2 \big) +H\,{r^2\over4s} $$ 

Let's break this equation down:

$ {dN\over dt} $ The rate of removal: the number of individuals caught per time unit

$ \big( r\,N +s\,N^2 \big) $ The rate of addition (in parentheses): the number of individuals born per time unit minus those dying from causes other than hunting.

$ H\,{r^2\over4s} $ The net rate of population growth: the number of individuals per time unit, considering births, deaths, and hunting.

If individual fishermen predominate (Figure [13.6](fig_13_6), left),
$H$ will be small. This pulls the curve down, as in
Figure [13.7](fig_13_7), lowering the carrying capacity slightly and
leaving somewhat fewer fish in the sea. It also introduces an Allee point,
though that point is far below the equilibrium and therefore not a significant
danger.

```{figure} ../img/fig_13_7.png
---
name: fig_13_7
alt: fig_13_7
width: 500px
align: center
---
Population growth with light harvesting ($H$ small).
```

But with increasingly focused and mechanized fishing
(Figure [13.6](fig_13_6),  right), $H$ approaches 1 and the curve is
pulled farther down (Figure [13.8](fig_13_8)). The carrying capacity
is markedly reduced and the population produces new individuals at a large rate.
And the Allee point is pulled close to the carrying capacity, introducing a
danger that unforeseen fluctuations in the population could push the population
below the Allee point and collapse the fishery.

```{figure} ../img/fig_13_8.png
---
name: fig_13_8
alt: fig_13_8
width: 500px
align: center
---
Population growth with heavy harvesting ($H$ near 1).
```

```{figure} ../img/fig_13_9.png
---
name: fig_13_9
alt: fig_13_9
width: 500px
align: center
---
Population growth with maximal harvesting\hfil\break ($H=1$).
```

Finally, with hunting or fishing at the maximum sustainable yield, the Allee
point coincides with the carrying capacity and in effect annihilates it
(Figure [13.9](fig_13_9). This introduces a dynamical conflict because
there is a stable situation to the right but an unstable one to the left, making
it inevitable that the population will fall below the Allee point and collapse.
The maximum sustainable yield is not sustainable!

### Stochastic modelling

Program [13.4] simulates harvesting at the so-called
maximal sustainable yield. It introduces small random fluctuations in the
population---so small that they cannot be discerned in a graph. The slight
stochasticity makes the program take a different trajectory each time it runs,
with widely different time courses. Inevitably, however, the populations drift
below the Allee point and rapidly collapse, as in the sample run of the program
shown in Figure [13.10](fig_13_10).

In the age of sailing, at the arrow marked A, fishing was high-effort but
low-impact and fisheries stayed approximately at their carrying capacity, $K$.
"Optimal harvesting" was introduced once mathematical ecology combined with
diesel technology, and fisheries helped feed the growing human and domestic
animal populations, with fish populations near "maximum sustainable yield,"
as expected. But throughout the 20th century, as shown on either side of the
arrow marked B, fish populations continued to decline, and before 2015---at the
arrow marked C---it becomes clear that something is seriously amiss.




What happened? A collapse is part of the dynamics of this kind of harvesting.
Inevitable stochasticity in harvest combines unfavorably with an unstable
equilibrium in the prey population. In some runs it collapses in 80 years, in
others it may take 300. The timing is not predictable; the main predictable
property of the simulation is that ultimately the system will collapse.

### Present situation

Many of the world's fisheries are under collapse, and in the oceans we seem to
be on a path like the one our predecessor predators took on land.

There are better ecological approaches---a "constant effort" approach, for
example, rather than the "constant harvest" examined here---but economic,
social, and political pressures have kept them from extensive use.

We hope this chapter has shown you that insufficient examination of ecological
equations applied on a large scale can generate disasters, that equilibria must
not be considered apart from their stability, and that management of real
ecological systems requires attention to natural history and social conditions.

```{figure} ../img/fig_13_10.png
---
name: fig_13_10
alt: fig_13_10
width: 500px
align: center
---
One sample run of Program *ProgOptimalHarvesting*, showing the collapse
typical of such runs.
```