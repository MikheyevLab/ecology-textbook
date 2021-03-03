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

The basic equation has $N_{1}$ as live biomass and $N_{2}$ as accumulated leaf litter. $N_{1}$ and $N_{2}$ are thus not two different species, but two different age classes of a single species.

$$
N_{1}(t+1) &= r&N_{1}(t)(1 - &N_{2}(t)) \\
N_{2}(t+1) &=  &N_{1}(t) +  p&N_{2}(t)
$$

The above is a common way to write difference equations, but subtracting $N_{i}$ from each side, dividing by $N_{i}$, and making $p = 0$ for simplicity gives the standard form we have been using.

$$t
\frac{1}{N_{1}}\frac{\Delta N_{1}}{\Delta t} &= (r-1) - rN_{2} &= r_{1} + s_{1,2}N_{2} \\
\frac{1}{N_{2}}\frac{\Delta N_{2}}{\Delta t} &= -1 + \frac{1}{N_{2}}N_{1} &= r_{2} + s_{2,1}N_{1}
$$

Notice something new. One of the coefficients, $s_{2,1}$ , is not a constant at all, but is the reciprocal of a dynamical variable. You will see this kind of thing again at the end of the predator–prey chapter, and in fact it is quite a normal result when blending functions (Chapter 18) to achieve a general Kolomogorov form (Equation 4.3). So the delayed logistic equation is as follows:

$$
\frac{1}{N_{1}}\frac{\Delta N_{1}}{\Delta t} = r_{1} + s_{1,2}N_{2} \\
\frac{1}{N_{2}}\frac{\Delta N_{2}}{\Delta t} = r_{2} + s_{2,1}N_{1}
$$

where $r_{1} = r-1$, $r_{2} = -1$, $s_{1,2} = -r$, and $s_{2,1} = \frac{1}{N_{1}}$. Notice also that $r_{i}$ with a subscript is different from $r$ without a subscript.

For small values of $r$, biomass and litter head to an equilibrium, as in the spiraling path of Figure 11.2 . Here the system starts at the plus sign, at time $t = 0$, with living biomass $N_{1} = 0.5$ and litter biomass $N_{2} = 0.1$. The next year, at time $t = 1$, living biomass increases to $N_{1} = 0.85$ and litter to $N_{2} = 0.5$. The third year, $t = 2$, living biomass is inhibited slightly to $N_{1} = 0.81$ and litter builds up to $N_{2} = 0.85$. Next, under a heavy litter layer, biomass drops sharply to $N_{1} = 0.22$, and so forth about the cycle. The equilibrium is called an [“attractor”](https://en.wikipedia.org/wiki/Attractor) because populations are pulled into it.

For larger values of $r$, the equilibrium loses its stability and the two biomass values, new growth and old litter, permanently oscillate around the state space, as in the spiraling path of Figure 11.3. The innermost path is an attractor called a [“limit cycle”](https://en.wikipedia.org/wiki/Limit_cycle). Populations starting outside of it spiral inward, and populations starting inside of it spiral&mdash;outward except for populations balanced precariously exactly at the unstable equilibrium point itself.

For still larger values of $r$, the system moves in and out of chaos in a way that itself seems chaotic. By $r = 2.15$ in Figure 11.4, the limit cycle is becoming slightly misshapen in its lower left. By $r = 2.27$ it has become wholly so, and something very strange has happened. A bulge has appeared between $0$ and about $0.5$ on the vertical axis, and that bulge has become entangled with the entire limit cycle, folded back on itself over and over again. What happens is shown by magnifying Region 1, inside the red square.

Figure 11.5 shows the red square of Figure 11.4 magnified 50 diameters. The tilted U-shaped curve is the first entanglement of the bulge, and the main part of the limit cycle is revealed to be not a curve, but two or perhaps more parallel curves. Successive images of that bulge, progressively elongated in one direction and compressed in the other, show this limit cycle to be infinitely complex. It is, in fact, not even a one-dimensional curve, but a [“fractal”](https://en.wikipedia.org/wiki/Fractal), this one being greater than one-dimensional but [less than two-dimensional](https://en.wikipedia.org/wiki/List_of_fractals_by_Hausdorff_dimension)!

Figure 11.6. magnifies the red square of Figure 11.5, an additional 40 diameters, for a total of 2000 diameters. The upper line looks single, but the lower fatter line from Figure 11.5 is resolved into two lines, or maybe more. In fact, every one of these lines, magnified sufficiently, becomes multiple lines, revealing finer detail all the way to infinity! From place to place, pairs of lines fold together in U-shapes, forming endlessly deeper images of the original bulge. In the mathematical literature, this strange kind of attractor is, in fact, called a “strange attractor.”

Such strange population dynamics that occur in nature, with infinitely complex patterns, cannot arise in phase spaces of dynamical systems for one or two species flowing in continuous time, but can arise for three or more species in continuous time. And as covered in Chapter 7, they can arise for even a single species approximated in discrete time.

What we have illustrated in this chapter is perhaps the simplest ecological system with a strange attractor that can be visualized in a two-dimensional state space.
