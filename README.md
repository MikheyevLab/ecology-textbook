# Ecology Textbook

This is a 'fork' of [*Quantitative Ecology: A New Unified Approach*](http://hdl.handle.net/11299/204551) by Lehman, Loberg and Clark, which was made available under the [![CC BY-NC 4.0](https://img.shields.io/badge/CC%20BY--NC%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc/4.0/) license. It was designed for the 2nd year Ecology course at the Australian National University in order to leverage the power of Jupyter for teaching quantitative concepts.


## Source code organization

- `book/images/chapter` images organized by chapter
- `book/content` markdown files organized by chapter

## Running the JupyterBook


### Build environment
The code is executed locally and the resulting HTML can be hosted by any static web server. For consistency, it's best to run the code in a conda environment, which can be created using 
```
conda env create --file environment.yml
conda activate ecology-textbook
```

This make take a while...

### Build the book

Once you have activated the environemnt and made your way to the project directory that contains the `book` folder you can run `jupyter-book build book` to compile the book.

You can then push the results using `ghp-import -n -p -f book/_build/html`
