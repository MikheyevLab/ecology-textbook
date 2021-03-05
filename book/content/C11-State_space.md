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

# 11 State space

Closely related to [“phase spaces”](https://en.wikipedia.org/wiki/Phase_space) are [“state spaces”](https://en.wikipedia.org/wiki/State_space). While phase spaces are typically used with continuous systems, described by differential equations, state spaces are used with discrete-time systems, described by difference equations. Here the natural system is approximated by jumps from one state to the next, as described in Chapter 7, rather than by smooth transitions. While the two kinds of spaces are similar, they differ in important ways.

Inspired by the complexities of ecology, and triggered in part by [Robert May’s bombshell paper](http://abel.harvard.edu/archive/118r_spring_05/docs/may.pdf) of 1976, an army of mathematicians worked during the last quarter of the twentieth century to understand these complexities, focusing on discrete-time systems and state spaces. One endlessly inter- esting state space is the delayed logistic equation ([Aronson et al. 1982](https://www.researchgate.net/profile/Donald-Aronson/publication/38329204_Bifurcations_from_an_Invariant_Circle_for_Two-Parameter_Families_of_Maps_of_the_Plane_A_Computer-Assisted_Study/links/551c18b80cf2fe6cbf7661ec/Bifurcations-from-an-Invariant-Circle-for-Two-Parameter-Families-of-Maps-of-the-Plane-A-Computer-Assisted-Study.pdf)), an outgrowth of the discrete-time logistic equation described in Chapter 7.

For a biological interpretation of the delayed logistic equation, let’s examine the example of live grassland biomass coupled with last year’s leaf litter. Biomass next year ($N_{t+1}$) is positively related to biomass this year ($N_{t}$), but negatively related to biomass from the previous year ($N_{t−1}$). The more biomass in the previous year, the more litter this year and the greater the inhibitory shading of next year’s growth. The simplest approximation here is that all biomass is converted to litter, a fixed portion of the litter decays each year, and inhibition from litter is linear. This is not perfectly realistic, but it has the essential properties for an example. Field data and models have recorded this kind of inhibition ([Tilman and Wedin, Nature 1991](https://www.cedarcreek.umn.edu/biblio/fulltext/t1186.pdf)) (read coverage of this paper in the New York Times [here](https://www.nytimes.com/1991/10/22/news/balance-of-nature-what-balance-is-that.html?pagewanted=all).

```{figure} ../img/bluebird6-C.jpg
---
name: fig_11_1
alt: fig_11_1
width: 600px
align: center
---
A prairie ecosystem setting seed in fall colors&mdash;Bluebird Prairie, U.S. Upper Midwest. If not burned, grazed, or mowed, grasslands can leave a thick layer of litter that inhibits the next year's growth.
```

The basic equation has $N_{1}$ as live biomass and $N_{2}$ as accumulated leaf litter. $N_{1}$ and $N_{2}$ are thus not two different species, but two different age classes of a single species.

$$
N_{1}(t+1) &= r&N_{1}(t)(1 - &N_{2}(t)) \\
N_{2}(t+1) &=  &N_{1}(t) +  p&N_{2}(t)
$$

The above is a common way to write difference equations, but subtracting $N_{i}$ from each side, dividing by $N_{i}$, and making $p = 0$ for simplicity gives the standard form we have been using.

$$
\frac{1}{N_{1}}\frac{\Delta N_{1}}{\Delta t} &= (r-1) - rN_{2} &= r_{1} + s_{1,2}N_{2} \\
\frac{1}{N_{2}}\frac{\Delta N_{2}}{\Delta t} &= -1 + \frac{1}{N_{2}}N_{1} &= r_{2} + s_{2,1}N_{1}
$$

Notice something new. One of the coefficients, $s_{2,1}$ , is not a constant at all, but is the reciprocal of a dynamical variable. You will see this kind of thing again at the end of the predator–prey chapter, and in fact it is quite a normal result when blending functions (Chapter 18) to achieve a general Kolomogorov form (Equation 4.3). So the delayed logistic equation is as follows:

$$
\frac{1}{N_{1}}\frac{\Delta N_{1}}{\Delta t} = r_{1} + s_{1,2}N_{2} \\
\frac{1}{N_{2}}\frac{\Delta N_{2}}{\Delta t} = r_{2} + s_{2,1}N_{1}
$$

where $r_{1} = r-1$, $r_{2} = -1$, $s_{1,2} = -r$, and $s_{2,1} = \frac{1}{N_{1}}$. Notice also that $r_{i}$ with a subscript is different from $r$ without a subscript.

```{code-block} r
---
name: program11_3
caption: |
    **Program 11.3** A program to compute successive points in the state space of the delayed logistic equation.
---
r=2.27;                         # Sample growth rate.
t0=100; t1=1000;                # Time boundaries.
r1=r-1; r2=-1; s12=-r;          # Parameters.
N1=.4; N2=.2; t=0; dt=1;        # Initial conditions.

while(t<=t0+t1)                 # Iterate the system.
{ s21=1/N2;                     # Calculate coupling.
dN1=N1*(r1+s12*N2)*dt;          # Advance to the next time step.
dN2=N2*(r2+s21*N1)*dt;        
N1=N1+dN1; N2=N2+dN2; t=t+dt;
if(t>t0) print(c(N1,N2)); }     # Display and repeat.

```

For small values of $r$, biomass and litter head to an equilibrium, as in the spiraling path of [Figure 11.2](fig_11_2) . Here the system starts at the plus sign, at time $t = 0$, with living biomass $N_{1} = 0.5$ and litter biomass $N_{2} = 0.1$. The next year, at time $t = 1$, living biomass increases to $N_{1} = 0.85$ and litter to $N_{2} = 0.5$. The third year, $t = 2$, living biomass is inhibited slightly to $N_{1} = 0.81$ and litter builds up to $N_{2} = 0.85$. Next, under a heavy litter layer, biomass drops sharply to $N_{1} = 0.22$, and so forth about the cycle. The equilibrium is called an [“attractor”](https://en.wikipedia.org/wiki/Attractor) because populations are pulled into it.

```{code-cell} r
---
tags: ["hide-input","hide-stdout","hide-stderr"]
<!-- render:
  image:
    width: 600px
    alt: fig11.2
    classes: shadow bg-primary
  figure:
    caption: |
      **Figure 11.2** Delayed logistic phase space with $r=1.9$, spiraling inward toward an equilibrium.
    name: figure_11_2 -->
---

suppressPackageStartupMessages(library(ggplot2))
suppressPackageStartupMessages(library(ggrepel))
suppressPackageStartupMessages(library(tidyr))
suppressPackageStartupMessages(library(magrittr))

###Figure 11.2
#Set variables
r=1.9; #Growth rate.
t0=0; t1=1000; #Time boundaries.
r1=r-1; r2=-1; s12=-r; #Parameters.
N1=.5; N2=.1; t=0; dt=1; #Initial conditions.
x.vec <- c(N1) ; y.vec <- c(N2) ; t.vec <- c(t) #Vectors for recording

#Iterate the system from t0 to t1
while(t<=t0+t1) {
  #Calculate coupling
  s21=1/N2;
  #Calculate change in N1 and N2
  dN1=N1*(r1+s12*N2)*dt;
  dN2=N2*(r2+s21*N1)*dt;
  #Calculate new N1 and N2 values
  N1=N1+dN1; N2=N2+dN2; t=t+dt;
  #Record these values
  x.vec <- c(x.vec,N1)
  y.vec <- c(y.vec,N2)
  t.vec <- c(t.vec,t)
}

#Make data frames for plotting
data <- data.frame(N1=x.vec,N2=y.vec,t=t.vec)
labels <- data %>% subset(t < (t0+13))
labels$t <- paste0("t = ",labels$t)

#Plot
plot.n <- data %>%
  ggplot(aes(x=N1, y=N2, label=t)) +
  geom_point(size=1, colour="#4287f5") +
  geom_segment(aes(xend=c(tail(N1, n=-1), NA),yend=c(tail(N2, n=-1), NA)),
               colour="#4287f5",size=1,arrow=arrow(length=unit(0.3,"cm"))) +
#  geom_text_repel(data=labels,fontface="bold") +
  theme_light() +
  scale_x_continuous(limits=c(0,1),breaks=seq(from=0,to=1,by=0.2),expand=c(0,0)) +
  scale_y_continuous(limits=c(0,1),breaks=seq(from=0,to=1,by=0.2),expand=c(0,0)) +
  theme(panel.border = element_rect(colour="black"),
        axis.ticks=element_line(colour="black"),
        axis.ticks.length = unit(8,"pt"))

suppressWarnings(plot(plot.n))
```
For larger values of $r$, the equilibrium loses its stability and the two biomass values, new growth and old litter, permanently oscillate around the state space, as in the spiraling path of [Figure 11.3](fig_11_3). The innermost path is an attractor called a [“limit cycle”](https://en.wikipedia.org/wiki/Limit_cycle). Populations starting outside of it spiral inward, and populations starting inside of it spiral&mdash;outward except for populations balanced precariously exactly at the unstable equilibrium point itself.

```{code-cell} r
---
tags: ["hide-input","hide-stdout","hide-stderr"]
<!-- render:
 image:
  width: 600px
  alt: fig11.3
  classes: shadow bg-primary
 figure:
  caption: |
   **Figure 11.3** Delayed logistic phase space with $r=2.03$, spiraling toward a [stable limit cycle](https://en.wikipedia.org/wiki/Limit_cycle), with the equilibrium point for $r=1.9$ shown as a dot.
  name: figure_11_3 -->
---

suppressPackageStartupMessages(library(ggplot2))
suppressPackageStartupMessages(library(ggrepel))
suppressPackageStartupMessages(library(tidyr))
suppressPackageStartupMessages(library(magrittr))

### Figure 11.3
###r=2.03
#Set variables
r=2.03; #Growth rate.
t0=0; t1=1000; #Time boundaries.
r1=r-1; r2=-1; s12=-r; #Parameters.
N1=.5; N2=.1; t=0; dt=1; #Initial conditions.
x.vec <- c(N1) ; y.vec <- c(N2) ; t.vec <- c(t) #Vectors for recording

#Iterate the system from t0 to t1
while(t<=t0+t1) {
  #Calculate coupling
  s21=1/N2;
  #Calculate change in N1 and N2
  dN1=N1*(r1+s12*N2)*dt;
  dN2=N2*(r2+s21*N1)*dt;
  #Calculate new N1 and N2 values
  N1=N1+dN1; N2=N2+dN2; t=t+dt;
  #Record these values
  x.vec <- c(x.vec,N1)
  y.vec <- c(y.vec,N2)
  t.vec <- c(t.vec,t)
}

#Make data frames for plotting
data.203 <- data.frame(N1=x.vec,N2=y.vec,t=t.vec)
labels.203 <- data.203 %>% subset(t < (t0+1))
labels.203$t <- paste0("t = ",labels.203$t)

###Get r=1.9 equilibrium point
#Set variables
r=1.9; #Growth rate.
t0=100; t1=1000; #Time boundaries.
r1=r-1; r2=-1; s12=-r; #Parameters.
N1=.5; N2=.1; t=0; dt=1; #Initial conditions.
x.vec <- c(N1) ; y.vec <- c(N2) ; t.vec <- c(t) #Vectors for recording

#Iterate the system from t0 to t1
while(t<=t0+t1) {
  #Calculate coupling
  s21=1/N2;
  #Calculate change in N1 and N2
  dN1=N1*(r1+s12*N2)*dt;
  dN2=N2*(r2+s21*N1)*dt;
  #Calculate new N1 and N2 values
  N1=N1+dN1; N2=N2+dN2; t=t+dt;
  #Record these values
  x.vec <- c(x.vec,N1)
  y.vec <- c(y.vec,N2)
  t.vec <- c(t.vec,t)
}

#Make data frames for plotting
data.19 <- data.frame(N1=x.vec[1000],N2=y.vec[1000])

#Plot
plot.n <- data.203 %>%
  ggplot(aes(x=N1, y=N2, label=t)) +
  geom_point(size=1, colour="#4287f5") +
  geom_segment(aes(xend=c(tail(N1, n=-1), NA),yend=c(tail(N2, n=-1), NA)),
               colour="#4287f5",size=1,arrow=arrow(length=unit(0.3,"cm"))) +
  geom_text_repel(data=labels.203,fontface="bold") +
  theme_light() +
  scale_x_continuous(limits=c(0,1),breaks=seq(from=0,to=1,by=0.2),expand=c(0,0)) +
  scale_y_continuous(limits=c(0,1),breaks=seq(from=0,to=1,by=0.2),expand=c(0,0)) +
  theme(panel.border = element_rect(colour="black"),
        axis.ticks=element_line(colour="black"),
        axis.ticks.length = unit(8,"pt")) +
  geom_point(data=data.19,aes(x=N1,y=N2),colour="#4287f5",size=2) +
  annotate(geom="text",x=c(0.5,0.5),y=c(0.75,0.5),label=c("r = 2.03","r=1.9"),fontface="bold")

suppressWarnings(plot(plot.n))

```
For still larger values of $r$, the system moves in and out of chaos in a way that itself seems chaotic. By $r = 2.15$ in [Figure 11.4](fig_11_4), the limit cycle is becoming slightly misshapen in its lower left. By $r = 2.27$ it has become wholly so, and something very strange has happened. A bulge has appeared between $0$ and about $0.5$ on the vertical axis, and that bulge has become entangled with the entire limit cycle, folded back on itself over and over again. What happens is shown by magnifying Region 1, inside the red square.

```{figure} ../img/fig_11_4.png
---
name: fig_11_4
alt: fig_11_4
width: 600px
align: center
---
Delayed logistic phase space with a stable equilibrium and three stable limit cycles for $r = 1.9$ to $r = 2.27$, as marked.
```
[Figure 11.5](fig_11_5) shows the red square of [Figure 11.4](fig_11_4) magnified 50 diameters. The tilted U-shaped curve is the first entanglement of the bulge, and the main part of the limit cycle is revealed to be not a curve, but two or perhaps more parallel curves. Successive images of that bulge, progressively elongated in one direction and compressed in the other, show this limit cycle to be infinitely complex. It is, in fact, not even a one-dimensional curve, but a [“fractal”](https://en.wikipedia.org/wiki/Fractal), this one being greater than one-dimensional but [less than two-dimensional](https://en.wikipedia.org/wiki/List_of_fractals_by_Hausdorff_dimension)!

```{figure} ../img/fig_11_5.png
---
name: fig_11_5
alt: fig_11_5
width: 600px
align: center
---
Delayed logistic phase space with $r = 2.27$, Region 1 from [Figure 11.4](fig_11_4) magnied 50 diameters.
```
[Figure 11.6](fig_11_6) magnifies the red square of [Figure 11.5](fig_11_5), an additional 40 diameters, for a total of 2000 diameters. The upper line looks single, but the lower fatter line from [Figure 11.5](fig_11_5) is resolved into two lines, or maybe more. In fact, every one of these lines, magnified sufficiently, becomes multiple lines, revealing finer detail all the way to infinity! From place to place, pairs of lines fold together in U-shapes, forming endlessly deeper images of the original bulge. In the mathematical literature, this strange kind of attractor is, in fact, called a “strange attractor.”

```{figure} ../img/fig_11_6.png
---
name: fig_11_6
alt: fig_11_6
width: 600px
align: center
---
Delayed logistic phase space with $r = 2.27$, Region 2 from [Figure 11.5](fig_11_5) magnied an additional 40 diameters.
```
Such strange population dynamics that occur in nature, with infinitely complex patterns, cannot arise in phase spaces of dynamical systems for one or two species flowing in continuous time, but can arise for three or more species in continuous time. And as covered in Chapter 7, they can arise for even a single species approximated in discrete time.

What we have illustrated in this chapter is perhaps the simplest ecological system with a strange attractor that can be visualized in a two-dimensional state space.

```{figure} ../img/0846.jpg
---
name: fig_11_7
alt: fig_11_7
width: 600px
align: center
---
Landscape of the [Mandelbrot set](https://en.wikipedia.org/wiki/Mandelbrot_set), which has been called the most complex object envisioned by the human mind. It is the division between two different behaviors in a particular two-dimensional dynamical system&mdash;an infinitely complex object that is less than 2-dimensional but greater than 1.9-dimensional. We display it here for your enjoyment&mdash;for wonder and for art.
```
