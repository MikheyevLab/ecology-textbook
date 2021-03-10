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

# Predator and prey

Competition and mutualism can be understood without much attention to the sizes
of the species involved. But predation is quite different. Think of a producer,
the prey, and a consumer, the predator. When the consumer is extremely large and
the producer very small, as with a whale and krill, the relationship is called
filter feeding. There the predator kills the prey. When the producer and
consumer are roughly matched in size, they are called predators and prey. When
the producer is much smaller than the consumer, but still independently mobile,
the relationship is called parasitism. And when the consumer is much smaller
still, and has difficulty moving around on its own, the relationship is called
infection and disease. Symptoms of disease are part of the ecology of disease.
In parasitism and disease, the consumer often does not kill the producer.

### Further examples of predation

Amazing mechanisms for both capturing prey and avoiding predators have
been discovered through evolution.
Fulmar chicks,[*](https://en.wikipedia.org/wiki/Fulmar), for example, can direct
"projectile vomit" at predators approaching the nest too closely
(Figure [12.1](fig_12_1)). This is not just icky for the predator. By
damaging the waterproofing of an avian predator's feathers, this ultimately can
kill the predator. The chick's projectile vomit is thus a lethal weapon.

```{figure} ../img/downer/p101.jpg
---
name: fig_12_1
alt: fig_12_1
width: 600px
align: center
---
Fulmer chick with projectile vomit as predator defense.
```

One of the most remarkable predatory weapons is that of
[pistol shrimp](https://en.wikipedia.org/wiki/Alpheidae) (Figure [12.2](fig_12_2).)
These shrimp have one special claw adapted to cavitation, and are capable of shooting bullets at their
prey; colonies of these shrimp are loud from the sound of these bullets. But
where does an underwater crustacean get bullets? Actually, it creates them from
nothing at all---from cavitation. If you've ever piloted a powerful motorboat
and pushed the throttle too hard, or watched a pilot do so, you've seen the
propellers start kicking out bubbles, which look like air bubbles. But the
propellers are well below the water line, where there is no air. The propellers
are in fact creating bubbles of vacuum---separating the water so instantly that
there is nothing left in between, except perhaps very low density water vapor.
Such bubbles collapse back with numerous blasts, each so powerful that it rips
off pieces of bronze off the propeller itself, leaving a rough surface that is
the telltale sign of cavitation.

```{figure} ../img/fairuse/PistolShrimp.jpg
---
name: fig_12_2
alt: fig_12_2
width: 600px
align: center
---
Pistol-packing shrimp shoot cavitation bullets.
```

A pistol shrimp snap its pistol claw together so quickly that it creates a vacuum
where water used to be. With the right circulation of water around the vacuum
bubble, the bubble can move, and a shrimp can actually project its bullet of
vacuum toward its prey. When the bubble collapses, the effect is like thunder
attending a lightning bolt, when air snaps together after the lightning has
created a column of near-vacuum (NatGeo video[https://www.youtube.com/watch?v=KkY_mSwboMQ]). But the consequences are quite different in
water. While a loud sound might hurt the ears of a terrestrial animal, the sound
does not rip apart the fabric of the animal's body. This is, however, what
intense sounds in water can do, traveling through water and through the
water-filled bodies of animals. In effect, pistol shrimp shoot bullets that
explode near their prey and numb them into immobility. Somehow evolution
discovered and perfected this amazing mechanism!

```{figure} ../img/fig12_3.png
---
name: fig_12_3
alt: fig_12_3
width: 700px
align: center
---
Rifle-carrying humans shoot lead bullets---bison bones and remnant herd.
```

The ultimate weapons of predation, however, are those of our own species.
Figure [12.3](fig_12_3) (right) shows a remnant bison herd, a few
hundred of the hundreds of millions of bison that migrated the plains not many
generations ago. No matter how vast their numbers, they were no match for
gunpowder and lead bullets, and they dropped to near extinction by the beginning
of the twentieth century. The image at the left illustrates the epic efficiency
of lead bullets by showing a nineteenth-century pile of bison bones, with
members of the predator species positioned atop and aside.

### Ecological communities are complex

Before proceeding with simplified models of predation, we want to stress that
ecological communities are complex (Figure [12.4](fig_12_4)).
Fortunately, progress in understanding them comes piece by piece. Complex food
webs, like the one illustrated in the figure, can be examined in simpler
"motifs."

```{figure} ../img/web/foodweb9.jpg
---
name: fig_12_4
alt: fig_12_4
width: 600px
align: center
---
Cretaceous terrestrial food web, Mitchell et al. 2012
PNAS.
```

You have seen in earlier chapters that there are two motifs for a single
Species: logistic and orthologistic, with exponential growth forming a fine
dividing line between them.
And in the prior chapter, you saw three motifs for two species:
predation, competition, and mutualism. ![motif_1](/img/ch12_motif_1.png) 

Later you will see that there are exactly forty distinct three-species motifs,
one of which is two prey pursued by one predator. This is called "apparent
competition" because it has properties of competition.![motif_2](/img/ch12_motif_2.png) 

### Predator--prey model

For the next several chapters we will consider two species, starting with one
predator and one prey. Figure [12.5](fig_12_5) depicts this situation,
with one line sloping down and the other up.

```{figure} ../img/fig12_5.png
---
name: fig_12_5
alt: fig_12_5
width: 600px
align: center
---
Predator-prey interactions with corresponding equations.
```

The graph on the left describes the prey, because its numbers $N_1$ are
reduced when the numbers of predator, $N_2$, increase. Likewise, the graph on
the right describes the predator, because its numbers, $N_2$, increase with the
density of its prey, $N_1$. The equations of growth are revealed by the slopes
and intercepts of the two lines.

Since these are both straight lines, $y=mx+b$, the equations can be written down
simply from the geometry. The intercept on the left is $+1$ and the slope is
$-1$. The intercept on the right is $-1/2$ and its slope is $+1/2$. The
equivalent equations of the two lines appear below the graphs.

These specific equations can be generalized using symbols in place of actual
numbers, writing $r_1$, $s_{1,2}$, $r_2$, and $s_{2,1}$ for the intercept $+1.0$
and slope $-1.0$ on the left and the intercept $-0.5$ and slope $+0.5$ on the
right, as follows.

$$\frac{1}{N_1} \frac{dN_1}{dt} = r_1 + s_{1,2}N_1, ... r_1 = + 1.0, s_{1,2} = -1.0$$

$$\frac{1}{N_2} \frac{dN_2}{dt} = r_1 + s_{2,1}N_1, ... r_2 = + 1.0, s_{2,1} = + 0.5$$

Merely by writing down the form of these geometric graphs, the classic
Lotka--Volterra predator--prey equations have appeared:

$$\frac{1}{N_1} \frac{dN_1}{dt} = r_1 + s_{1,2}N_1, r_1 > 0, s_{1,2} < 0$$

$$\frac{1}{N_2} \frac{dN_2}{dt} = r_1 + s_{2,1}N_1, r_2 <> 0, s_{2,1} > 0$$

Here is how the equations look in many textbooks, with $V$ for prey density and
$P$ for predator density:

$$\frac{dv}{dt} = rV - \alpha VP$$

$$\frac{dP}{dt} = \beta VP - qP$$

Volterra[*](https://en.wikipedia.org/wiki/Vito_Volterra) arrived at the equation
rather differently than we did, with a growth rate $r$ for the prey, reduced by
a rate $\alpha$ for each encounter between predator and prey, $V\!\cdot\!P$, and
with a natural death rate $q$ for predators and compensatory growth rate $\beta$
for each encounter, $V\!\cdot\!P$, between predator and prey.

To see the equivalence, divide the first equation through by $V$ and the
second by $P$, then set $V=N_1$, $P=N_2$, $r=r_1$,
$q=-r_2$, $\alpha=-s_{1,2}$, $\beta=s_{2,1}$. The Lotka--Volterra
formulation will be revealed to be just the $r+sN$ equations in disguise.

Figure [12.5](fig_12_5)  exposes the basic predator--prey equations from
geometry, which reveal the unity of the equations of ecology, as you saw in Equation 5.2 (Ch 5). That analysis revealed a form of
one-dimensional equation not considered in ecological textbooks---the
orthologistic equation---and which is needed for understanding human and other
rapidly growing populations.

Now analyze these equations a bit. Suppose predator and prey densities are both
1, say 1 individual per hectare ($N_1=N_2=1$). Substitute 1 for both $N_1$
and $N_2$. What are the growth rates?

$$\frac{1}{1} \frac{dN_1}{dt} = 1.0 - 1.0 \times 1 = 0$$

$$\frac{1}{1} \frac{dN_2}{dt} = -0.5 + 0.5 \times 1 = 0$$

The population growth is zero for both species, so the populations do not
change. This is an equilibrium.

This can be seen in the graphs below. The fact that both growth rates,
$1/N_1\,dN_1/dt$ and $1/N_1\,dN_2/dt$, cross the horizontal axis at $N_1=N_2=1$
(position of the dots) means that growth stops for both. This is called an
equilibrium, a steady state, or, sometimes, a fixed point.

![fixed_point_equation](../img/fig12_5_image.png)

But what will happen if both populations are 2, say 2 individuals per hectare?

![2_individuals_per_hectare](../img/fig12_5_image2_2.png)

The prey growth rate, $1/N_1\,dN_1/dt$, is negative at $N_2=2$ (the line is
below the horizontal axis) and the predator growth rate, $1/N_1\,dN_2/dt$, is
positive at $N_1=2$ (the line is above the horizontal axis). So the prey
population will decrease and the predator population will increase. Exactly how
the populations will develop over time can be worked out by putting these
parameters into the program in Chapter 8.2. Here it what it shows.

```{code-cell} r 
---
tags: [hide-input, remove-stdout, remove-stderr]
render:
  image:
    width: 600px
    alt: fig_12_6
    classes: shadow bg-primary
  figure:
    caption: |
      Fig 12.6 Dynamics of the predator-prey system of Figure [12.5](fig_12_5) as calculated by program in Chapter 8.2 (code for two species) 
---

suppressWarnings(suppressMessages(library(ggplot2))) # hide messages

## Similar set up with in chapter 8 but with new parameters defined here
N1 = 2; N2 = 2; 
r1 = 1.0; r2 = -0.5; 
s11= 0; s12= -1.0; s21= 0.5; s22=0;
t=0; dt=.0001; tmax=75; step=0;

population <- cbind(t, N1, N2)

finalpop <- data.frame(t=as.numeric(), N1=as.numeric(), N2=as.numeric()) #creating empty dataframe to hold results
finalpop <- rbind(finalpop, population) #putting in the input data into the dataframe

for (i in 1:(75/0.0001)) #to run the for loop until t reaches 75
{ 
  dN1=(r1+s11*N1+s12*N2)*N1*dt;
  dN2=(r2+s21*N1+s22*N2)*N2*dt;
  N1=N1+dN1; if(N1<0) N1=0;
  N2=N2+dN2; if(N2<0) N2=0;
  t=t+dt; step=step+1;
  if(step==1000) #TRUE at every 1000 iteration
  { results <- cbind(t, N1, N2) #results of the iteration
  finalpop = rbind(finalpop, results); #is then combined into a dataframe
  step=0; 
  }
}

#PLOTTING

ggplot() +
  geom_line(data=finalpop, aes(x=t, y=N1), color="black") + #N1 line
  geom_line(data=finalpop, aes(x=t, y=N2), color="red") + #N2 line
  scale_x_continuous(breaks = seq(0, 30, by = 5),
                     limits = c(0, 30)) +
  xlab(expression(paste("Day ", "(", italic("t"), ")"))) +
  ylab('Population Density (per ml)') +
  theme_bw() +
  ## Put arrows and annotate
  annotate("text", x = 10.5078, y = 2.287877+0.2, label = expression(N[2] ~ (predator)), color = "red", hjust = - .1, size = 5) + 
  annotate("segment", x = 10.5078, y = 2.287877 + 0.2, xend = 10.5078, yend = 2.287877, color = "red",
           arrow = arrow(type = "closed", length = unit(0.02, "npc"))) +
  annotate("text", x = 9.10156, y = 3.028683 +0.2, label = expression(N[1] ~ (prey)), color = "black", hjust = - .1, size = 5) +
  annotate("segment", x = 9.10156, y = 3.028683 +0.2, xend = 9.10156, yend = 3.028683, color = "black",
           arrow = arrow(type = "closed", length = unit(0.02, "npc"))) 

```
For comparison, here is what early experimenters such as Gause and Huffaker
showed for populations of protozoa, mites, and other small systems in the middle
of the twentieth century:

```{figure} ../img/fig12_7.png
---
name: fig_12_7
alt: fig_12_7
width: 600px
align: center
---
Dynamics in an experimental predator--prey system conducted by C. B. Huffaker [link to the wikipedia page](https://en.wikipedia.org/wiki/Huffaker's_mite_experiment) in the 1950s with two species of mite.
```

The dynamics here are much the same as those shown in the calculated version of
Figure [12.6](fig_12_6)  and the experimental version of
Figure [12.7](fig_12_7), but with stochasticity overlayed on the
experimental system. Experimenters, however, had difficulty achieving continual
cycling. In simple conditions, the predators would find the prey and eat every
last one, and then the predators themselves would all die. Continual cycling
could be achieved by providing the prey with places to escape, or making it
difficult for the predators to move around the environment.

### Phase space
The cycling can be understood better in phase space, where the densities of the
two species are represented as two-dimensional points.


```{code-cell} r 
---
tags: [hide-input, remove-stdout, remove-stderr]
render:
  image:
    width: 500px
    alt: fig_12_8
    classes: shadow bg-primary
  figure:
    caption: |
      Fig 12.8 Predator--prey phase space. The circle marks an equilibrium where growth of both predator and prey stops. The plus sign marks a population value of $N_1=1.5$, $N_2=0.5$. 
---

suppressWarnings(suppressMessages(library(ggplot2))) # hide messages

# Fig 12.8
phase_space_plot <- ggplot() +
  scale_x_continuous(breaks = seq(0, 3, by = 1), limits = c(0, 3.5), expand = c(0, 0)) +
  scale_y_continuous(breaks = seq(0, 2, by = 1), limits = c(0, 2.5), expand = c(0, 0)) +
  xlab(expression(N[1] ~ (Prey))) +
  ylab(expression(N[2] ~ (Predator))) +
  theme_classic() 
  
phase_space_plot +
  geom_point(aes(x = 1, y = 1)) +
  geom_point(aes(x = 1.5, y = 0.5), shape = "+", size = 5, colour = "blue")  
  
```

For example, as explained in Chapter 10 (Figure 10.1), if the prey
population is 1.5 and the predator population is 0.5, the population will be 1.5
units to the right on the horizontal axis and 0.5 units up on the vertical axis,
at the location of the blue plus sign in the graph.

here does the predator population cease to grow? In the equation
$$ {1\over N_2}{dN_2\over dt} = r_2 + s_{2,1} N_1 $$
it ceases to grow where $0 = r_2 + s_{2,1} N_1$, or
$\,N_1=-r_2/s_{2,1}$. With $r_2=-0.5$ and $s_{2,1}=0.5$, this is a vertical
line---the predator isocline---at $N_1=1$, as in
Figure [12.9](fig_12_9)


```{code-cell} r 
---
tags: [hide-input, remove-stdout, remove-stderr]
render:
  image:
    width: 600px
    alt: fig_12_9
    classes: shadow bg-primary
  figure:
    caption: |
      Fig 12.9 The predator isocline, at which the predator population ceases to grow.
    name: fig_12_9
---

suppressWarnings(suppressMessages(library(ggplot2))) # hide messages

# Fig 12.9
phase_space_plot +
  ## Put arrows and annotate
  annotate("segment", x = 0.5, y = 0.5+0.25, xend = 0.5, yend = 0.5, arrow = arrow(type = "closed", length = unit(0.02, "npc"))) +
  annotate("segment", x = 1.5, y = 0.5, xend = 1.5, yend = 0.5+.25, arrow = arrow(type = "closed", length = unit(0.02, "npc"))) +
  annotate("segment", x = 1.5, y = 1.5, xend = 1.5, yend = 1.5+0.25, arrow = arrow(type = "closed", length = unit(0.02, "npc"))) + 
  annotate("segment", x = 0.5, y = 1.5+.25, xend = 0.5, yend = 1.5, arrow = arrow(type = "closed", length = unit(0.02, "npc"))) +
  geom_point(aes(x = 1, y = 1), shape = 1, size = 3) +
  geom_segment(aes(x = 1, xend = 1, y = 0, yend = 2.5))
  
```

To the left of the isocline, prey are sparse and predators decline, as indicated
by the downward arrows. To the right of the isocline, in contrast, prey are
abundant and predators can increase, as indicated by the upward arrows.

Likewise, where does the prey population cease to grow? In the equation

$$ {1\over N_1}{dN_1\over dt} = r_1 + s_{1,2} N_2 $$
it ceases to grow where $0 = r_1 + s_{1,2} N_2$, which means $\,N_2=-r_1/s_{1,2}$.
With $r_1=1$ and $s_{1,2}=-1$, this is a horizontal line---the prey isocline---at $N_2=1$.

```{code-cell} r 
---
tags: [hide-input, remove-stdout, remove-stderr]
render:
  image:
    width: 600px
    alt: fig_12_10
    classes: shadow bg-primary
  figure:
    caption: |
      Fig 12.10 The prey isocline, at which the prey population ceases to grow.
---

suppressWarnings(suppressMessages(library(ggplot2))) # hide messages

# Fig 12.10
phase_space_plot2 <- phase_space_plot +
  ## Put arrows and annotate
  annotate("segment", x = 0.5, y = 0.5, xend = 0.5+.2, yend = 0.5, arrow = arrow(type = "closed", length = unit(0.02, "npc"))) +
  annotate("segment", x = 0.5, y = 1.5, xend = 0.5-.2, yend = 1.5, arrow = arrow(type = "closed", length = unit(0.02, "npc"))) +
  annotate("segment", x = 1.5, y = 0.5, xend = 1.5+.2, yend = 0.5, arrow = arrow(type = "closed", length = unit(0.02, "npc"))) +
  annotate("segment", x = 1.5, y = 1.5, xend = 1.5-.2, yend = 1.5, arrow = arrow(type = "closed", length = unit(0.02, "npc"))) + 
  geom_segment(aes(x = 0, xend = 3.5, y = 1, yend = 1)) 
  

phase_space_plot2

```

Below the isocline, predators are sparse so prey can increase, as indicated by
the arrows pointing right. Above the isocline, in contrast, predators are
abundant and prey decrease, as indicated by the arrows pointing left. Putting
Figures [12.9](fig_12_9) and Figure [12.10](fig_12_10) together
gives Figure Figure [12.11](fig_12_11), which shows rotation in the
combined arrows.

```{code-cell} r 
---
tags: [hide-input, remove-stdout, remove-stderr]
render:
  image:
    width: 600px
    alt: fig_12_11
    classes: shadow bg-primary
  figure:
    caption: |
      Fig 12.11 Both isoclines, with both sets of arrows combined, showing the cycling.
---

suppressWarnings(suppressMessages(library(ggplot2))) # hide messages

# Fig 12.11
phase_space_plot +
  ## Put arrows and annotate
  annotate("segment", x = 0.5, y = 0.5, xend = 0.5+.25, yend = 0.5, arrow = arrow(type = "closed", length = unit(0.02, "npc"))) +
  annotate("segment", x = 0.5, y = 1.5, xend = 0.5-.25, yend = 1.5, arrow = arrow(type = "closed", length = unit(0.02, "npc"))) +
  annotate("segment", x = 1.5, y = 0.5, xend = 1.5+.25, yend = 0.5, arrow = arrow(type = "closed", length = unit(0.02, "npc"))) +
  annotate("segment", x = 1.5, y = 1.5, xend = 1.5-.25, yend = 1.5, arrow = arrow(type = "closed", length = unit(0.02, "npc"))) + 
  geom_point(aes(x = 1, y = 1), shape = 1, size = 3) +
  geom_segment(aes(x = 0, xend = 3.5, y = 1, yend = 1)) +
  annotate("segment", x = 0.5, y = 0.5, xend = 0.5, yend = 0.5-.25, arrow = arrow(type = "closed", length = unit(0.02, "npc"))) +
  annotate("segment", x = 1.5, y = 0.5, xend = 1.5, yend = 0.5+.25, arrow = arrow(type = "closed", length = unit(0.02, "npc"))) +
  annotate("segment", x = 1.5, y = 1.5, xend = 1.5, yend = 1.5+0.25, arrow = arrow(type = "closed", length = unit(0.02, "npc"))) + 
  annotate("segment", x = 0.5, y = 1.5, xend = 0.5, yend = 1.5-.25, arrow = arrow(type = "closed", length = unit(0.02, "npc"))) +
  geom_segment(aes(x = 1, xend = 1, y = 0, yend = 2.5)) +
  # Diag lines
  annotate("segment", x = 0.5, y = 0.5, xend = 0.5+.25, yend = 0.5-.25, arrow = arrow(type = "closed", length = unit(0.02, "npc")))+ 
  annotate("segment", x = 1.5, y = 0.5, xend = 1.5+.25, yend = 0.5+.25, arrow = arrow(type = "closed", length = unit(0.02, "npc")))+
  annotate("segment", x = 1.5, y = 1.5, xend = 1.5-.25, yend = 1.5+0.25, arrow = arrow(type = "closed", length = unit(0.02, "npc"))) + 
  annotate("segment", x = 0.5, y = 1.5, xend = 0.5-.25, yend = 1.5-.25, arrow = arrow(type = "closed", length = unit(0.02, "npc"))) 
  
```

Here the rotation can be deduced by thinking about the dynamics of predator and
prey. The rotation is corroborated by using
Table [10.1](#####) to calculate the eigenvalues. The
eigenvalues of the interior equilibrium turn out to be $0\pm0.707i$, a
number with both real and imaginary parts. The existence of an imaginary part,
$\pm0.707i$, implies cycling. The real part, 0, means that eigenvalues
alone cannot determine the stability---it could be stable, unstable, or neutral.
In fact, for this particular case with no self-limitation, deeper mathematical
examination shows that the stability is neutral. The dynamics will rotate
indefinitely, maintaining whatever cycle it started on.

```{code-cell} r 
---
tags: [hide-input, remove-stdout, remove-stderr]
render:
  image:
    width: 600px
    alt: fig_12_12
    classes: shadow bg-primary
  figure:
    caption: |
      Fig 12.12 Days 1 through 10 marked on the cycle of Figure [12.6](fig_12_6)
---

suppressWarnings(suppressMessages(library(ggplot2))) # hide messages

# Fig 12.12
annotation_fig_12_12 <- data.frame(number = c("Day", 0:10), 
                                   x_points = c(2, 2, 0.591851, 0.240695, 0.175371,0.198726,0.30022, 0.538703,1.05014, 2.01495, 3.01349, 1.8691),
                                   y_points = c(1.5, 2, 2.18264, 1.59416, 1.06725,0.70875,.4850557,0.36001,.3198912,.408964,.902564,2.06225))


## Coordinates for circle
cir_coord <- read.csv("../data/fig12_12_circle_coor.csv")
names(cir_coord) <- c("x_coor", "y_coor")

phase_space_plot +
  ## Put arrows and annotate
  geom_path(data = cir_coord, aes(x = x_coor, y = y_coor), alpha = 0.5, colour = "blue") +
  geom_point(aes(x = 1, y = 1), shape = 1, size = 3) +
  geom_segment(aes(x = 0, xend = 3.5, y = 1, yend = 1)) +
  geom_segment(aes(x = 1, xend = 1, y = 0, yend = 2.5)) +
  annotate("text", label = as.character(annotation_fig_12_12$number), 
             x = annotation_fig_12_12$x_points, y = annotation_fig_12_12$y_points, color = "orange", size = 7) +
  annotate("segment", x = 2, y = 1.5+.05, xend = 2, yend = 2-0.05, colour = "orange", arrow = arrow(type = "closed", length = unit(0.02, "npc"))) 

```

Taking all the data from Figure [12.6](fig_12_6) and plotting $N_1$
versus $N_2$ gives Figure [12.12](fig_12_12). The process starts at day
0 with $N_1=N_2=2$. One day later, prey have dropped to $N_1\approx0.5$ and
predators have increased to $N_2\approx2.2$, marked by the red numeral 1 on the
cycle. (By the symbol '$\approx$', we mean "approximately equal to.")
Two days later, prey have dropped to $N_1\approx0.2$ and predators have dropped
to $N_2\approx1.0$, marked by the numeral 3. With predators at relatively low
levels, prey then start to increase and, four days later, have reached
$N_1\approx1.0$, while predators have dropped further to $N_2\approx0.3$, marked
by the numeral 7. Two days later, prey have increased to $N_1\approx3.0$ and
predators have increased to $N_2\approx1.0$, marked by the numeral 9. Finally,
one day later the cycle begins to repeat, as marked with the numeral 10. This is
another way of showing the cycling of Figure [12.6](fig_12_6).

```{code-cell} r 
---
tags: [hide-input, remove-stdout, remove-stderr]
render:
  image:
    width: 600px
    alt: fig_12_13
    classes: shadow bg-primary
  figure:
    caption: |
      Fig 12.13 The flow across the phase space.
---

suppressWarnings(suppressMessages(library(ggplot2))) # hide messages

arrow_vect <- read.csv("../data/arrows_vector.csv")
names(arrow_vect) <- c('var1', 'var2', 'var3', 'var4')


phase_space_plot +
  ## Put arrows and annotate
  geom_path(data = cir_coord, aes(x = x_coor, y = y_coor), alpha = 0.5, colour = "blue") +
  geom_point(aes(x = 1, y = 1), shape = 1, size = 3) +
  geom_segment(aes(x = 0, xend = 3.5, y = 1, yend = 1)) +
  geom_segment(aes(x = 1, xend = 1, y = 0, yend = 2.5)) +
  # annotate("text", label = as.character(annotation_fig_12_12$number), 
  #          x = annotation_fig_12_12$x_points, y = annotation_fig_12_12$y_points, color = "orange", size = 7) +
  annotate("segment", x = arrow_vect[[1]], y = arrow_vect[[2]], xend = arrow_vect[[3]], yend = arrow_vect[[4]], colour = "grey", arrow = arrow(type = "closed", length = unit(0.01, "npc"))) 
  
```

In Figure [12.13](fig_12_13)---a flow diagram, the entire phase space
can be filled with arrows to show how cycling proceeds everywhere. The path of
Figure [12.6](fig_12_6), displayed in Figure [12.12](fig_12_12), is overlayed in blue.