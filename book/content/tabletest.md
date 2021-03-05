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

# test!

```{code-cell} r
---
tags: ["hide-input","hide-stderr","hide-stdout"]
render:
  table:
    alt: two-species-formulae
caption: |
      Two-species formulae for equation 8.1
name: two-species-formulae
---

suppressPackageStartupMessages({
  library(kableExtra)
  library(IRdisplay)
}) # hide annoying messages
options(knitr.kable.NA = '') # don't plot missing values

df = data.frame(x=c("Origin (Both species extinct)","Horizontal axis (Species 1 at $K_{1}$)","Vertical axis (Species 2 at $K_{2}$)","Interior (Coexistence)"),
  y=c("$(0,0)$","$(-\\frac{r_{1}}{s_{1,1}},0)$","$(0,-\\frac{r_{2}}{s_{2,2}})$","$(\\frac{p}{a}\\frac{q}{a})$"),
  z=c("$(r_{1},r_{2})$","$(-r_{1},\\frac{q}{s_{1,1}})$","$(-r_{2},\\frac{p}{s_{2,2}})$","$(\\frac{-b \\pm \\sqrt{b^{2}-4ac}}{2a})$"))

df %>% kbl(format="html",align = "lcc", col.names = c("Location","Equilibrium","Eigenvalues")) %>%
footnote(general="with\n $a = s_{1,2}s_{2,1} - s_{1,1}s_{2,2}$ \n$b = r_{1}s_{2,2}(s_{2,1}-s_{1,1})+r_{2}s_{1,1}(s_{1,2}-s_{2,2})$\n$c = -pq$\n$p = r_{1}s_{2,2}-r_{2}s_{1,2}$\n$q = r_{2}s_{1,1}-r_{1}s_{2,1}$\nin the ecological equations for two interacting species\n$\\frac{1}{N_{1}}\\frac{dN_{1}}{dt}=r_{1}+s_{1,1}N_{1}+s_{1,2}N_{2}$\n $\\frac{1}{N_{2}}\\frac{dN_{2}}{dt}=r_{2}+s_{2,2}N_{2}+s_{2,1}N_{1}$\nwhere\n$N_{1}$, $N_{2}$ are population abundances of Species 1 and 2\n$r_{1}$, $r_{2}$ are intrinsic growth rates\n$s_{1,1}$, $s_{2,2}$ measure species' effects on themselves\n$s_{1,2}$, $s_{2,1}$ measure effects between species",footnote_as_chunk = F,general_title="") %>% as.character %>% display_html()
```

$ $
