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
# Code highlighting

## Basic

<pre>
  <code class="prettyprint">1 + (2 + 3) + <span style="background-color:red">1</span>
  <span style="background-color:yellow">int i;</span></code>
</pre>


## Using tooltips and google code prettify

<script src="https://cdn.jsdelivr.net/gh/google/code-prettify@master/loader/run_prettify.js"></script>
<pre>
  <code class="prettyprint">1 + (2 + 3) + <span class="ttooltip">1<span class="ttooltiptext" style="color:white"><span class="nocode">This is red</span></span></span>
</pre>
