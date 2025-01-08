# XY Programming Language Documentation

This repo hosts the official documentation, reference, tutorial of the XY
programming language. It is available online at
[https://doc.xy-lang.org](https://doc.xy-lang.org)

## Code structure

The root folder contains the code for the main documentation website. The `tutorial/` folder contains the step-by-step tutorial. The two share assets but are separate jekyll projects.

## Building and previewing locally

Assuming [Bundler] is installed on your computer:

1. Run `bundle install` once to install dependencies.
2. Run `bundle exec jekyll serve` and navigate to `localhost:4000` in your browser.

To preview the tutorial:
1. `cd tutorial` go to the tutorial folder
2. `bundle exec jekyll serve` and navigate to `localhost:4000` in your browser.

There are also a bunch of automated tests which can be run by executing `./tutorial/test`.

## Contributing

Contributions are more than welcome!

If you have found any problems with the documentation (eg. bad grammar, broken links) please open and [issue](https://github.com/xy-org/xy-lang-doc/issues).

If you want to do the hard work yourself then you can make your changes in a feature branch and open a [pull request](https://github.com/xy-org/xy-lang-doc/pulls).

### A word about XY code snippets
Don't be perturbed by XY code snippets being marked as *python*. That is done to force Jekyll to generate nice highlighting as XY is not yet supported by Jekyll's syntax highlighting library.
