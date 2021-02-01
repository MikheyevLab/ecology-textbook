---
jupytext:
  text_representation:
    extension: .md
    format_name: myst
kernelspec:
  display_name: Python 3
  language: python
  name: python3
---

# Notebooks written entirely in Markdown

It is possible to store Jupyter notebooks in plain Markdown. This allows you
to define a notebook structure entirely using MyST Markdown. For more information
about MyST Markdown, see {doc}`../content/myst`.

Notebooks with Markdown can be read in, executed, and cached by Jupyter Book (see {doc}`../content/execute` for information on how to cache pages).
This allows you to store all of your notebook content in a text format that is much nicer for version control software, while still having all the functionality of a Jupyter notebook.

:::{note}
MyST notebooks uses [MyST-NB to convert between ipynb and text files][myst-nb:index].
See its documentation for more information.
:::

To see an example of a MyST notebook, you can look at
[many of the pages of this documentation](https://github.com/executablebooks/jupyter-book/tree/master/docs).
For example, see {download}`../interactive/hiding.md` and {download}`../content/layout.md`.

