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

## 6.1 Phenomological graph

The excerpt of data you have been given includes the world's
population in billions, by year. That is all. Figure 6.1 shows
the data plotted in a phenomenological way - population
size versus year, supplemented with a curve going back 2000
years to provide perspective. The blue dots show the range
of data you will be using to project the future population,
and the black 'X' marks a great demographic transition that 
is not obvious in this graph, but that will become glaringly
so in Figure 6.3.

```{figure} https://upload.wikimedia.org/wikipedia/commons/f/fa/Elephants_at_Amboseli_national_park_against_Mount_Kilimanjaro.jpg
---
alt: figure-6_1
width: 600px
align: center
---
[Global human population over the past 2000 years](https://commons.wikimedia.org/wiki/File:Elephants_at_Amboseli_national_park_against_Mount_Kilimanjaro.jpg)
```
Can you project global population by simply extending
that curve? The population is clearly rising at an enormous
rate, expanding most recently from 3 billion to 7 billion in
less than half a century. Simply projecting the curve would
lead to a prediction of more than 11 billion people by the
middle of the 21th century, and more than 15 billion by the
century's end.

But such an approach is too simplistic. In one sense, the
data are all contained in that curve, but are obscured by
the phenomena themselves. We need to extract the biology
inherent in the changing growth rate *r* as well as the ecology 
inherent in the changing density dependence *s*. In other
words, we want to look at data showing **1=*N*** **Δ*N*=Δ*t*** versus
*N*, as in Figure 4.4.





``` r
N <- 1
time <- 0:(5 * 24) # create a sequence on numbers from 1 to 5 * 25, incrementing by 1
for(t in  time) {
  N <- N * 2
  }
```

```{warning}
The way the model is implemeted differs slightly from that of the original textbook, which used a `while` loop. These loops can run forever if not correctly specified, so are a bit dangerous for an interactive learning exercise. The actual model and results are the same.
```


```{code-cell} r
:tags: ["output_scroll"]
N <- 1
time <- 1:(5 * 24)
populations <- data.frame(size = integer()) # create an empty table with one column called "size".
for(t in time) {
  N <- N * 2
  populations[t, "size"] = N # save the output to the table
  }
populations # print the results!
```


```{code-cell} r
library(ggplot2)
ggplot(populations, aes(x=1:(5*24), size)) + geom_line() + xlab("Time (hours)") + 
  ylab("Population size (bacteral cells)")
```


```{figure} https://upload.wikimedia.org/wikipedia/commons/f/fa/Elephants_at_Amboseli_national_park_against_Mount_Kilimanjaro.jpg
---
alt: Elephants
width: 600px
align: center
---
[Elephants at Amboseli National Park against Mount Kilimanjaro](https://commons.wikimedia.org/wiki/File:Elephants_at_Amboseli_national_park_against_Mount_Kilimanjaro.jpg)
```

Of course he had no computers, nor calculators, and apparently kept track of 90 or more age classes and made his calculations (which have never been found) on paper. He calculated by hand on paper and alas those notes have never been found. But he said it cost him “some pain” to reach the conclusion that at the end of the fifth century, fifteen million elephants would be walking the earth, descended from one
original pair. From this, he concluded that unlimited growth is impossible.

Of course he had no computers, nor calculators, and apparently kept track of 90 or more age classes and made his calculations (which have never been found) on paper. He calculated by hand on paper and alas those notes have never been found. But he said it cost him “some pain” to reach the conclusion that at the end of the fifth century, fifteen million elephants would be walking the earth, descended from one original pair. From this, he concluded that unlimited growth is impossible.

```{figure} ../img/Darwin.jpg
---
alt: Darwin
width: 400px
align: center
---
Charles Darwin was in his twenties when he realized that natural selection was a cause of evolution and started to formulate his theory
```

```{epigraph}
There is no exception to the rule that every organic being naturally increases at so high a rate that, if not destroyed, the earth would soon be covered by the progeny.

-- Darwin, 1859
```

That he explained in Chapter Three of his Origin of Species.After explaining results of selection by people in the breeding of domestic animals, he introduced the concept of selection by natural causes in the wild, which he called “natural selection.” The simplest model of unlimited population growth was thus useful in the extreme, leading to an inviolable law of biology and the theory of evolution as one of its consequences. Individuals with qualities that allow them to suffer lower mortality or to reproduce slightly faster, and who pass those qualities to their offspring, will be the ones whose qualities predominate.Charles Darwin was in his twenties when he realized that natural selection was a cause of evolution and started to formulate his theory.


## Exercises and Questions

1. Update this code to simulate growth of a population that triples every hour. What is the population at time after three days of growth?
2. Update this code to simulate growth of a population that doubles every ten hours. What is the population at time after three days of growth?
