# Shared setup for every chapter that runs R code.
# Each chapter sources this in a hidden setup chunk:
#
#   ```{r}
#   #| include: false
#   source("_common.R")
#   ```
#
# Keep plot styling here, not in individual chapters, so figures stay consistent.

suppressPackageStartupMessages({
  library(ggplot2)
})

# Colours ---------------------------------------------------------------------
# The prose refers to series by colour name ("species 1, in blue", "predator
# (red line)"), so colours are named by hue. Blue/red is the default pair for
# two series. Green is reserved for trend/reference lines drawn over points
# (red-green is weak under colour-blindness, so always pair it with a different
# mark type). Grey is for neutral context (axes at zero, guides, annotations).
eco_cols <- c(
  blue  = "#2a78d6",
  red   = "#e34948",
  green = "#008300",
  grey  = "#7a7974"
)

# Standard mapping for two interacting species / prey and predator.
species_cols <- c(N1 = eco_cols[["blue"]], N2 = eco_cols[["red"]])

# Theme -----------------------------------------------------------------------
theme_eco <- function(base_size = 13) {
  theme_minimal(base_size = base_size) +
    theme(
      panel.grid.minor  = element_blank(),
      panel.grid.major  = element_line(colour = "grey90", linewidth = 0.4),
      axis.line         = element_line(colour = "grey30", linewidth = 0.4),
      axis.ticks        = element_line(colour = "grey30", linewidth = 0.4),
      axis.title        = element_text(colour = "grey15"),
      axis.text         = element_text(colour = "grey30"),
      plot.title        = element_text(face = "bold", size = rel(1)),
      plot.title.position = "plot",
      legend.position   = "bottom",
      legend.title      = element_blank(),
      strip.text        = element_text(face = "bold", hjust = 0),
      plot.background   = element_rect(fill = "white", colour = NA)
    )
}

theme_set(theme_eco())

# Default mark styling: 1pt-ish lines, readable points, colours from eco_cols.
update_geom_defaults("line",    list(linewidth = 0.9, colour = eco_cols[["blue"]]))
update_geom_defaults("path",    list(linewidth = 0.9, colour = eco_cols[["blue"]]))
update_geom_defaults("point",   list(size = 2,        colour = eco_cols[["blue"]]))
update_geom_defaults("segment", list(linewidth = 0.6, colour = eco_cols[["grey"]]))
update_geom_defaults("abline",  list(linewidth = 0.8, colour = eco_cols[["green"]]))
update_geom_defaults("smooth",  list(linewidth = 0.9, colour = eco_cols[["green"]]))
update_geom_defaults("text",    list(size = 3.8,      colour = "grey15"))

options(
  ggplot2.discrete.colour = unname(eco_cols[c("blue", "red", "green", "grey")]),
  ggplot2.discrete.fill   = unname(eco_cols[c("blue", "red", "green", "grey")]),
  dplyr.summarise.inform  = FALSE,
  readr.show_col_types    = FALSE
)
