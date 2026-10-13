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

# Phase space

```{image} ../img/Curie-Poincare-Solvay1911-Csepia.jpg
:alt: marble
:class: bg-primary mb-1
:width: 130px
:align: right
```
In differential equation models, the basic population dynamics among species become visible as a glance in ["phase space."](https://en.wikipedia.org/wiki/Phase_space) The concepts and applications of phase spaces were orignally worked out in the late nineteenth century by Henri Poincar&eacute; and others for the dyanmics systems of physics, but the mathematical foundations also apply to the theories of ecology. (Pictured is Poincar&eacute; seated with Marie Curie at the initial solvay conference in 1911. As a point of interest, Marie Curie is the onlt person to have twiwce won the Nobel Prize for science&mdash;and she was nominated the first time before her doctoral defense!).

```{figure} ../img/fig_10_1.png
---
name: fig_10_1
alt: fig_10_1
width: 600px
align: center
---
Phase space with two species abundances and directional derivatives also marked.
```
In a phase space with two species interacting&mdash;in competition, predation, or mutualism&mdash;the abundance of one species occupies the horizontal axis and that of the other occupies the vertical axis. This makes each possible pair of population values ($N_{1}$,$N_{2}$) into a point in the phase space.

For example, a measured average abundance of 1.55 individuals per square meter for Species 1 and of 1.1 individuals per square meter for Species 2 corresponds to the point marked with an '&times;' in {numref}`Figure %s <fig_10_1>`&mdash;1.55 units to the right on the horizontal axis and 1.1 units up the vertical axis. If Species 1 is rare, at 0.05 individuals per square meter, and Species 2 is at 0.85 individuals per square meter, the point is that marked with a '&plus;', near the left in {numref}`Figure %s <fig_10_1>`.

```{figure} ../img/fig_10_2.png
---
name: fig_10_2
alt: fig_10_2
width: 600px
align: center
---
Phase space with two species abundances and trajectories to equilibria.
```
A phase space, however, is not about the size of populations, but rather about how the populations are changing over time. That change ($\frac{dN_{1}}{dt}=f_{1}(N_{1},N_{2})$, $\frac{dN_{2}}{dt}=
f_{2}(N_{1},N_{2})$) is made visible as arrows emerging from each point.

Suppose that, at the time of the measurement of the populations marked by &times;, Species 1 is decreasing slightly and Species 2 is increasing relatively strongly. Decreasing for Species 1 means moving to the left in the phase space, while increasing for Species 2 means moving up, as shown in the inset of {numref}`Figure %s <fig_10_1>`. The net direction of change would thus be north-northwest. In the opposite direction, for the populations marked by &plus;, if Species 1 is increasing slightly and Species 2 is decreasing relatively strongly, the direction of change would be south-southeast.

Arrows in the phase space point in the direction of immediate population change. But as the populations change, ecological conditions also change and the paths curve. {numref}`Figure %s <fig_10_2>` shows in green how the populations change in this example as time passes. The pair of abundances starting from &times; moves up, with Species 1 decreasing at first and then both species increasing and nally coming to rest at the green dot, which marks a joint carrying capacity.

From the &plus;, on the other hand, Species 2 decreases uniformly but Species 1 increases at first and then reverses direction. In this case both species go extinct by arriving at the origin (0,0). Something signicant separates the &plus; from the &times;.

What separates them can be judged by calculating an arrow at many points throughout the phase space ({numref}`Figure %s <fig_10_3>`). Following the arrows from any pair of abundances ($N_{1}$,$N_{2}$) traces the future abundances that will arise as time progresses, and following the arrows backwards shows how the populations could have developed in the past. Note that the arrows seem to be avoiding the open circle near the lower left (at about 0.5, 0.3). That is an Allee point.

```{figure} ../img/fig_10_3.png
---
name: fig_10_3
alt: fig_10_3
width: 600px
align: center
---
Phase space with multiple equilibria.
```
Some points in the phase space are exceptional: along certain special curves, the arrows aim exactly horizontally or exactly vertically. This means that one of the two populations is not changing&mdash;Species 1 is not changing along the vertical arrows, and Species 2 is unchanged along the horizontal arrows. These special curves are the isoclines&mdash;from the roots '*iso-*,' meaning 'same' or 'equal,' and '*-cline*', meaning 'slope' or 'direction'.)

The two isoclines of Species 2 are shown in red in {numref}`Figure %s <fig_10_4>`, one along the horizontal axis and the other rising and curving to the right. On the horizontal axis, the abundance of Species 2 is zero. Therefore it will always stay zero, meaning it will not change and making that entire axis an isocline. Along the other red isocline, the arrows emerging exactly from the isocline point exactly right or left, because the system is exactly balanced such that the abundance of Species 2 does not change&mdash;it has no vertical movement.

```{figure} ../img/fig_10_4.png
---
name: fig_10_4
alt: fig_10_4
width: 600px
align: center
---
Phase space with multiple equilibria and isoclines.
```
The situation is similar for the two isoclines of Species 1, shown in blue in {numref}`Figure %s <fig_10_4>` and {numref}`%s <fig_10_5>`&mdash;one along the vertical axis and the other rising and curving upward. Along the blue
curves, the arrows emerging exactly from the isocline point exactly up or down. Again, along the blue isocline the system is exactly balanced such that the abundance of Species 1 does not change&mdash;it has no horizontal movement.

```{figure} ../img/fig_10_5.png
---
name: fig_10_5
alt: fig_10_5
width: 600px
align: center
---
Phase space with multiple equilibria, isoclines, and trajectories.
```
Understanding the isoclines of a system goes a long ways toward understanding the dynamics of the system. Where an isocline of one species meets an isocline of the other, the population of neither species changes and therefore an equilibrium forms. These are marked with circles. Notice that the arrows converge on thelled circles (stable equilibria) and judiciously avoid the open circle (unstable equilibrium). And notice that wherever a population ($N_{1}$,$N_{2}$) starts, the arrows carry it to one of two outcomes (except, technically, starting on the Allee point itself, where it would delicately remain until perturbed).

For further illustration, four population growth curves are traced in green in {numref}`Figure %s <fig_10_5>` and marked as A, B, C, and D. All start with one of the populations at 2.0 and the other at a low or moderate level. And they head to one of the two stable equilibria, avoiding the unstable equilibrium in between. You can view these four growth curves plotted in the usual way, as species abundances versus time, in {numref}`Figure %s <fig_10_6>`. Blue indicates Species 1, while red indicates Species 2.

```{figure} ../img/fig_10_6.png
---
name: fig_10_6
alt: fig_10_6
width: 600px
align: center
---
Trajectories from {numref}`Figure %s <fig_10_5>` through time.
```

## Surface generating the flow

A good way to understand the arrows of phase spaces is to imagine raindrops falling on a curvilinear rooftop and owing across its surface. {numref}`Figure %s <fig_10_7>` shows such a surface.

Why should thinking of raindrops on rooftops help us understand phase spaces? It is because the differential equations themselves are situated on mathematically surfaces&mdash;albeit sometimes higher-dimensional surfaces&mdash;with points flowing dynamically across the surfaces, just like raindrops owing across a roof. It is not completely the same, of course, but is a useful aid to thought.

```{image} ../img/marble.jpg
:alt: marble
:class: bg-primary mb-1
:width: 100px
:align: right
```
Instead of raindrops, it can also be useful to think of a marble rolling on the surface. At the bottom of the basin at Point C in {numref}`Figure %s <fig_10_7>`, a marble is trapped. The surface goes up in every direction from this point, so after any small disturbance the marble will roll to the bottom again.

Point B corresponds to the equilibrium at the origin, stable in this case, where both species are extinct. A marble resting on this surface and experiencing a small positive disturbance away from the origin must roll uphill in every direction, so it will return to that equilibrium as well. It is below the two-species Allee point.

```{figure} ../img/fig_10_7.png
---
name: fig_10_7
alt: fig_10_7
width: 600px
align: center
---
Translucent surface representing the flow of {numref}`Figure %s <fig_10_3>` to {numref}`Figure %s <fig_10_5>`.
```
For example, Point A divides rain flowing to the left and rain flowing to the right. The basin at Point C corresponds to the carrying capacity, Point B corresponds to extinction at the origin, and Point A corresponds to the unstable Allee point.

Point A, on the other hand, corresponds to the Allee point. A marble could be balanced precariously at that place, with the slightest breath of air sending it to extinction at B or carrying capacity in the basin at C, depending on miniscule variations in the breath. Marbles starting close to either of the axes roll to the origin, equilibrium B. Marbles starting farther from the axes are on the other side of a long ridge and roll to the carrying capacity at C.

## Eigenvectors and eigenvalues

Think about shapes on which a marble could remain stationary, possibly balanced precariously, on a complicated two dimensional surface in three-dimensional space, with peaks and valleys in their structure. {numref}`Figure %s <fig_10_8>` shows seven possible configurations for remaining stationary.
```{figure} ../img/fig_10_8.png
---
name: fig_10_8
alt: fig_10_8
width: 600px
align: center
---
Seven kinds of equilibria possible as part of surfaces defining two-species phase spaces.
```
Configuration A is a summit, a high point with respect to its surroundings. It curves downward in every direction. It is therefore unstable&mdash;a marble perched on top can roll away in any direction.

Configuration C is the opposite, a basin. The surface curves upward in every direction. It is stable because a marble resting at the bottom rolls back from a disturbance in any direction.
```{image} ../img/saddle.jpg
:alt: saddle
:class: bg-primary mb-1
:width: 100px
:align: right
```
Configuration B is like a combination of A and C. It is called a "saddle" for its once-ubiquitous shape (right). It curves upward in some directions and downward in others. A marble resting at its very center is unstable because it can roll away in many directions.

Configurations D, E, and F are related to A, B, and C, but are level in at least one direction. A "ridge," configuration D, has equilibria all along its very top. A marble balanced precariously there and nudged could conceivably move to a new equilibrium along the ridge, if the nudge were aligned with infinite exactitude; almost certainly, however, the marble would roll off. This configuration has an infinite number of equilibria&mdash;all along the ridge&mdash;but none of them are stable.

A "trough," configuration F, is the opposite of a ridge, with equilibria all along its lowest levels. A marble resting there and nudged will move to a new equilibrium position at the base of the trough. Again there are an infinite number of equilibria&mdash;all along the base&mdash;but none are stable because, pushed along the trough, the marble does not return to its previous location. The equilibria are neutrally stable, how ever, in the ecological view.

An "inection," configuration E, is like a combination of D and F, changing slope and becoming level, but then resuming the same direction as before and not changing to the opposite slope. It too has a level line with an infinite number of equilibria, all unstable, with marbles rolling away from the slightest nudge in half of the possible directions.

configuration G, a perfectly flat "plain," is perhaps easiest to understand. A marble can rest anywhere, so every point on the at surface is an equilibrium. But a marble will not return to its former position if nudged, so no equilibrium on the at surface is stable. In ecology this situation is sometimes called "neutrally stable;" in mathematics it is called "unstable."

With three-dimensional images and human cognitive power, it is possible to visualize a surface at a glance, such as in {numref}`Figure %s <fig_10_7>`, and judge the implications for populations growing according to equations that correspond to that surface. You can see at a glance if it is curving up everywhere or down everywhere, if it combines upward and downward directions, or if it has level spots. You can classify each equilibrium into the configurations of {numref}`Figure %s <fig_10_8>`. But how can that judgement be quantied, made automatic?

The method of [*eigenvectors* and *eigenvalues*](https://en.wikipedia.org/wiki/Eigenvalues_and_eigenvectors) accomplishes this. Think of the prex eigen- as meaning "proper," as in "proper vector" or "proper value." The idea will become clear shortly. The method of eigenvectors and eigenvalues was developed in stages over the course of more than two centuries by some of the best mathematical minds, and now we can apply it intact to ecology.

Think of a one-dimensional slice through the surface of {numref}`Figure %s <fig_10_7>` , successively passing through points B, A, C, and beyond. It would look like the top of {numref}`Figure %s <fig_10_9>`. As before, a marble balanced precisely at A would be unstable, ready to roll either toward B or C. The equilibrium points are level points where the slope is zero, as they are on the surface of {numref}`Figure %s <fig_10_7>`. From calculus, this is where the derivative is zero, where $\frac{dy}{dx}=0$. Those slopes of zero are marked by green horizontal lines in the figure.

The middle graph of {numref}`Figure %s <fig_10_9>` shows sign of the derivative, $\frac{dy}{dx}$, plus or minus. The sign function on the vertical axis, [$sgn(u)$](https://en.wikipedia.org/wiki/Sign_function), is equal to zero if u is zero but is equal to plus or minus one if $u$ is positive or negative, respectively. Whether an equilibrium is in a trough or at a summit is determined by how the slope is changing exactly at the equilibrium point. From calculus, that is the second derivative, $\frac{d^{2}y}{dx^{2}}$, recording changes in the first derivative, $\frac{dy}{dx}$&mdash;just as the first derivative records changes in the surface itself.
```{figure} ../img/fig_10_9.png
---
name: fig_10_9
alt: fig_10_9
width: 600px
align: center
---
A slice through the surface of {numref}`Figure %s <fig_10_7>`, with the slope of the surface (its first derivative, $\frac{dy}{dx}$, middle) and changes in that slope (its second derivative, $\frac{d^{2}y}{dx^{2}}$, bottom).
```
The sign of the second derivative is shown in the bottom part of {numref}`Figure %s <fig_10_9>`. Wherever the slope is increasing at an equilibrium point|that is, changing from sloping down on the left to sloping up on the right|that is a basin. Wherever it is decreasing at an equilibrium point&mdash;changing from sloping up at the left to sloping down at the right&mdash;that is a summit. Whether an equilibrium point is stable or not can thus be determined mathematically merely from the sign of the second derivative of surface at that point!

This is easy if there is only one species, as in the models of earlier chapters, with only one direction to consider. But it becomes tricky when two or more species are interacting, for an infinite number of directions become available.

It might seem that a configuration will be a basin if the sur face curves upward in both the x and y directions, as in configuration C of {numref}`Figure %s <fig_10_8>`. But have a look at the three parts of {numref}`Figure %s <fig_10_10>`. Part A is a surface with a trough aligned with the axes. Looking along the $x$-axis&mdash;which would be the $N_{1}$ axis showing the abundance of Species 1&mdash;the surface is curving up on both sides of its minimum (white curve). However, looking along the $y$-axis&mdash;the $N_{2}$ axis showing the abundance of Species 2&mdash;reveals that it is exactly level in that direction (green line), meaning the equilibrium is not stable.
```{figure} ../img/fig_10_10.png
---
name: fig_10_10
alt: fig_10_10
width: 600px
align: center
---
Partial derivatives, eigenvectors, and stability.
```
But suppose the same surface is rotated 45 degrees, as in part B of thefigure. The surface curves upward not only along the $x$-axis (white curve) but also along the $y$-axis (green curve). Yet the surface is the same. Contrary to what might have been expected, curving upward in both the $x$ and $y$ directions does not mean the configuration is a basin! Understanding the structure means looking in the proper directions along the surface, not simply along the axes.

This is what eigenvalues and eigenvectors do. They align with the "proper" axes for the surface, as illustrated in part C. No matter how twisted, skewed, or rescaled the surface is with respect to the axes, the eigenvectors line up with the "proper" axes of the surface, and the eigenvalues measure whether the slope is increasing or decreasing along those axes at an equilibrium. In short, if all the eigenvalues are positive, the equilibrium is a basin, as in {numref}`Figures %s.C <fig_10_7>` and {numref}`%s.C <fig_10_8>`. If all the eigenvalues are negative, the equilibrium is a summit, as in {numref}`Figures %s.A <fig_10_7>` and {numref}`%s.A <fig_10_8>`. And if the eigenvalues are of mixed signs, or if some are zero, then we get one of the other configurations ({numref}`Box %s <box_10_1>`).

```{admonition} Rules of eigenvalues for hill-climbing systems
---
name: box_10_1
class: tip
---
1. If all eigenvalues are negative, the equilibrium is stable.
2. If any eigenvalue is positive, the equilibrium is unstable.
3. If some or all of the eigenvalues are zero and any remaining eigenvalues are negative, there is not enough information in the eigenvalues to know whether the equilibrium is stable or not. A deeper look at the system is needed.
```
```{image} ../img/Sunset-JuneauMountains-C.jpg
:alt: junea_mountains
:class: bg-primary mb-1
:width: 150px
:align: right
```
**Climbing up versus sliding down**. All considerations thus far apply to systems that travel downhill to lower states of energy, such as raindrops  owing or marbles rolling under the influence of gravity. Dynamical systems can do the opposite&mdash;they can climb to the highest level in the locality. For example, natural selection is commonly described as climbing "fitness peaks" on abstract "adaptive landscapes." Of course, for mathematical surfaces rather than real mountain ranges, this is just a point of view. Whether a system climbs up or slides down depends arbitrarily on whether the mathematical surface is affixed with a plus or a minus sign in the equations.

In the bottom graph of {numref}`Figure %s <fig_10_9>`, an equilibrium in a hill-climbing system is stable if the slope is decreasing (negative sign) rather than increasing (positive sign). Because human intuition applies so well to marbles rolling off heights and settling into shallows, we have chosen to explain it intuitively that wayfirst, but it is important to understand both ways.
```{image} ../img/hessian.jpg
:alt: hessian
:class: bg-primary mb-1
:width: 200px
:align: right
```
It turns out that the proper axes at each equilibrium point&mdash;the eigenvectors&mdash;can be determined exactly from only four numbers, and how much the slope is increasing or decreasing at each equilibrium point&mdash;the eigenvalues&mdash;can be determined at the same time from the same four numbers. These are the four partial derivatives in what is called the ["Hessian matrix"](https://en.wikipedia.org/wiki/Hessian_matrix) of the surface, or, equivalently in the ["Jacobian matrix"](https://en.wikipedia.org/wiki/Jacobian_matrix_and_determinant) of the population growth equations. An understanding of these matrices and their applications has developed in mathematics over the past two centuries.

By expending some effort and attention you can work the eigenvalues out mathematically with pencil and paper. However, you will likely employ computers to evaluate the eigenvalues of ecological systems. This can be done with abstract symbols in computer packages such as Mathematica or Maxima, or numerically in programming languages such as R. For standard two-species systems, we have worked out all equilibria and their corresponding eigenvalues. These are recorded in {numref}`Table %s <table_10_1>` in mathematical notation and in {numref}`Program %s <program_10_1>` as code, and identify the equilibria and stability for all predation, mutualism, and competition systems represented by Equation {eq}`eq_8_1`, which is copied into the table for reference.

```{list-table} Two-species formulae for Equation 8.1
:header-rows: 1
:align: center
:name: table_10_1

* - Location
  - Equilibiurm
  - Eigenvalues
* - Origin<br>(Both species extinct)
  - $(0,0)$
  - $(r_{1},r_{2})$
* - Horizontal axis<br>(Species 1 at $K_{1}$)
  - $(-\frac{r_{1}}{s_{1,1}},0)$
  - $(-r_{1},\frac{q}{s_{1,1}})$
* - Vertical axis<br>(Species 2 at $K_{2}$)
  - $(0,-\frac{r_{2}}{s_{2,2}})$
  - $(-r_{2},\frac{p}{s_{2,2}})$
* - Interior<br>(Coexistence)
  - $(\frac{p}{a}\frac{q}{a})$
  - $(\frac{-b \pm \sqrt{b^{2}-4ac}}{2a})$
```
The variables in the above table are defined as:

$$
   a &= s_{1,2}s_{2,1} - s_{1,1}s_{2,2} \\
   b &= r_{1}s_{2,2}(s_{2,1}-s_{1,1})+r_{2}s_{1,1}(s_{1,2}-s_{2,2}) \\
   c &= -pq \\
   p &= r_{1}s_{2,2}-r_{2}s_{1,2} \\
   q &= r_{2}s_{1,1}-r_{1}s_{2,1}
$$

These relate to our ecological equations for interaction species like so:

$$
   \frac{1}{N_{1}}\frac{dN_{1}}{dt}&=r_{1}+s_{1,1}N_{1}+s_{1,2}N_{2} \\
   \frac{1}{N_{2}}\frac{dN_{2}}{dt}&=r_{2}+s_{2,2}N_{2}+s_{2,1}N_{1}
$$

And finally, the terms in our ecological equations are defined thus:

$$
   N_{1}, N_{2} && \text{ are population abundances of Species 1 and 2} \\
   r_{1}, r_{2} && \text{ are intrinsic growth rates} \\
   s_{1,1}, s_{2,2} && \text{ measure species' effects on themselves} \\
   s_{1,2}, s_{2,1} && \text{ measure effects between species}
$$


```{code-block} r
---
name: program_10_1
caption: |
    The code equivalent to {numref}`Table %s <table_10_1>`, for use in computer programs. `Sqrt(w)` is a specially written function that returns 0 if $w$ is negative (returns the real part of the complex number $0 + \sqrt{w}i$).
---

p = r1*s22 -r2*s12;             # Compute useful sub-formulae
q = r2*s11 -r1*s21;
a = s12*s21 -s11*s22;
b = r1*s22*(s21-s11)
   +r2*s11*(s12)-s22);
c = -p*q;
                                # Compute the equilibria
x00=0;       y00=0;             # (at the origin)
x10=-r1/s11; y10=0;             # (on the x-axis)
x01=0;       y01=-r2/s22;       # (on the y-axis)
x11=p/a;     y11=q/a;           # (at the interior)

v00= r1; w00=r2;                # Compute the corresponding
v1-=-r1; w10=q/s11;             # four pairs of eigenvalues
v01=-r2; w01=p/s22;             # (real part only).
v11=(-b-Sqrt(b^2-4*a*c))/(2*a);
w11=(-b+Sqrt(b^2-4*a*c))/(2*a);
```
The formulae in {numref}`Table %s <table_10_1>` work for any two-species $RSN$ model&mdash;that is, any model of the form $\frac{1}{N_{i}}\frac{dN_{i}}{dt} = r_{i} + s_{i,i}N_{i} + s_{i,j}N_{j}$ with constant coefficients&mdash;but formulae for other models must be derived separately, from a software package, or following methods for ["Jacobian matrices"](https://en.wikipedia.org/wiki/Jacobian_matrix_and_determinant).
```{admonition} Parameters for a sample competitive system.
---
name: box_10_2
class: tip
---
```{list-table}
:header-rows: 0

* - $r_{1  } = 1.2$
  - $r_{2  } = 0.8$
  - Intrinsic growth rates
* - $s_{1,1} = -1$
  - $s_{2,2} = 0.8$
  - Self-limiting terms
* - $s_{1,2} = -1.2$
  - $s_{2,1} = -0.5$
  - Cross-limiting terms
```

```{admonition} Calculated results for a sample competitive system.
---
name: box_10_3
class: tip
---
```{list-table}
:header-rows: 1

* - Equilibrium
  - Coordinates
  - Eigenvalues
  - Condition
* - Origin
  - (0,0)
  - (1.2,0.8)
  - Unstable
* - Horizontal axis
  - (1.2,0)
  - (-1.2,0.2)
  - Unstable
* - Vertical axis
  - (0,0.8)
  - (-0.8,0.24)
  - Unstable
* - Interior
  - (0.6,0.5)
  - (-0.123,-0.977)
  - Stable
```
## A phase space example

For an example ofnding equilibria and stability, consider two competing species with intrinsic growth rates $r_{1} = 1.2$ and $r_{2} = 0.8$. Let each species inhibit itself in such a way that $s_{1,1} = -1$ and $s_{2,2} = -1$, let Species 2 inhibit Species 1 more strongly than it inhibits itself, with $s_{1,2} = -1.2$, and let Species 1 inhibit Species 2 less strongly than it inhibits itself, with $s_{2,1} = -0.5$. These conditions are summarized in {numref}`Box %s <box_10_2>` for reference. The question is, what are the equilibria in this particular competitive system, and what will their stability be?

First, there is an equilibrium at the origin $(0,0)$ in these systems, where both species are extinct. This is sometimes called the "trivial equilibrium," and it may or may not be stable. From {numref}`Table %s <table_10_1>`, the eigenvalues of the equilibrium at the origin are $r1$ and $r2$&mdash;in this case 1.2 and 0.8. These are both positive, so from the rules for eigenvalues in {numref}`Box %s <box_10_1>`, the equilibrium at the origin in this case is unstable. If no individuals of either species exist in an area, none will arise. But if any individuals of either species somehow arrive in the area, or if both species arrive, the population will increase. This equilibrium is thus unstable. It is shown in the phase space diagram of {numref}`Figure %s <fig_10_11>`, along with the other equilibria in the system.

```{figure} ../img/fig_10_11.png
---
name: fig_10_11
alt: fig_10_11
width: 600px
align: center
---
Phase space for the example of competition with stable coexistence summarized in {numref}`Box %s <box_10_2>` and {numref}`%s <box_10_2>`. The arrows are calculated by code like that of {numref}`Program %s <program_10_2>`, included for reference.
```
On the horizontal axis, where Species 2 is not present, the equilibrium of Species 1 is $\hat{N}_{1} = -r_{1}=s_{1,1} = 1.2$. That is as expected&mdash;it is just like the equilibrium of $\hat{N} = \frac{-r}{s}$ for a single species&mdash;because it indeed is a single species when Species 2 is not present. As to the stability, one eigenvalue is $-r_{1}$, which is $-1.2$, which is negative, so it will not cause instability. For the other eigenvalue at this equilibrium, you need to calculate q from {numref}`Table %s <table_10_1>`. You should get $q=-0.2$, and if you divide that by $s_{1.1}$, you should get $0.2$. This is positive, so by the rules of eigenvalues in {numref}`Box %s <box_10_1>`, the equilibrium on the horizontal axis is unstable. Thus, if Species 1 is at its equilibrium and an increment of Species 2 arrives, Species 2 will increase and the equilibrium will be abandoned.

Likewise, on the vertical axis, where Species 1 is not present, the equilibrium of Species 2 is $N_{2} = \frac{-r_{2}}{s_{2,2}} = 0.8$. Calculate the eigenvalues at this equilibrium from {numref}`Table %s <table_10_1>` and you should get $p = -0.24$, and dividing by $s_{2,2}$ give eigenvalues of $-0.8$ and $0.24$. With one negative and the other positive, by the rules of eigenvalues in {numref}`Box %s <box_10_1>` the equilibrium on the vertical axis is also unstable.

Finally, for the fourth equilibrium&mdash;the interior equilibirum where both species are present&mdash;calculate $a$, $b$, and $c$ from the table. You should get $a = -0.4$, $b = -0.44$, and $c = -0.048$. Now the interior  equilibrium is $\hat{N}_{1} = \frac{p}{a} = 0.6$ and $\hat{N}_{2} = \frac{q}{a} = 0.5$.

But is it stable? Notice the formula for the eigenvalues of the interior equilibrium in {numref}`Table %s <table_10_1>`, in terms of $a$, $b$, and $c$. It is simply [the quadratic formula](https://en.wikipedia.org/wiki/Quadratic_equation)! This is a clue that the eigenvalues are embedded in a quadratic equation, $ax^{2} + bx + c = 0$. And if you start a project to derive the formula for eigenvalues with pencil and paper, you will see that indeed they are. In any case, working it out more simply from the formula in the table, you should get $-0.123$ and $-0.977$. Both are negative, so by the rules of {numref}`Box %s <box_10_1>` the interior equilibrium for this set of parameters is stable.

As a final note, the presence of the square root in the formula suggests that eigenvalues can have imaginary parts, if the square root covers a negative number. The rules of eigenvalues in {numref}`Box %s <box_10_1>` still apply in this case, but only to the real part of the eigenvalues. Suppose, for example, that the eigenvalues are $\frac{-1 \pm \sqrt{5}}{2} = -0.5 \pm 1.118i$. These would be stable because the real part, $-0.5$, is negative. But it turns out that because the imaginary part, $\pm 1.118i$, is not zero, the system would cycle around the equilibrium point, as predator-prey systems do.
```{image} ../img/Orbital-Wiki-D4M0-C.jpg
:alt: orbital
:class: bg-primary mb-1
:width: 100px
:align: right
```
In closing this part of the discussion, we should point out that eigenvectors and eigenvalues have broad applications. They reveal, for instance, electron orbitals inside atoms (right), alignment of multiple variables in statistics, vibrational modes of piano strings, and rates of the spread of disease, and are used for a bounty of other applications. Asking how eigenvalues can be used is a bit like asking how the number seven can be used. Here, however, we simply employ them to evaluate the stability of equilibria.

---

```{code-block} r
---
name: program_10_2
caption: |
    Sample program in R to generate a phase space of arrows, displaying the locations of the beginning and ends of the arrows, which are passed through a graphics program for display. The ‘while(1)’ statement means “while forever”, and is just an easy way to keep looping until conditions at the bottom of the loop detect the end and break out.
---
# PHASE SPACE FLOW DIAGRAM
#
# This program computes the positions and direcrions of the arrows
# in a phase space. It puts a few hundred arrows across the
# two-dimensional space, mostly uniformly distributed but with a
# small random variation in their starting positions. That seems
# to look better than a strictly regular arrangement.

r1= 1.0; s12=-1.0; s11=0;    # Parameters for species 1.
r2=-0.5; s21= 0.5; s22=0;    # Parameters for species 2.

xmax=3.5; ymax=2.5; grid=15; # Size and number of grid cells.
dymax=xmax/grid;             # Spacing between grid cells.
xy0=dxy/2;                   # Indentation at the left and top.
a=0.2;                       # Length of arrows.

x=y=xy0;                     # Generate points uniformly across
while(1)                     # the phase space with small random
{ N1=x+runif(1,-.03,.03);    # variations in their locations, for
  N2=y+runif(1,-.03,.03);    # best appearance in the graph.

  d1=(r1+s11*N1+s12*N2)*N1;  # Compute the magnitude of change in
  d2=(r2+s21*N1+s22*N2)*N2;  # each population from each point.

  b=sqrt(d1^2+d2^2);         # Display a vector of fixed length.
  print(c(N1, N2,
  N1+d1*a/b, N2+d2*a/b));

  x=x+dxy;                   # Advance horizontally along the row.

  if(x>xmax)                 # At the end of the row, move to the
  { x=xy0; y=y+dxy; }        # beginning of the next row.

  if(y>ymax) break; }        # Stop the loop when completed.
```
