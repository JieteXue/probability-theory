# Probability Theory

This project contains probability theory notes written with the reusable
`mathematics.cls` document class.

## Compilation

The main document is:

```text
probability-theory.tex
```

Compile it with `latexmk`:

```bash
latexmk -pdf -interaction=nonstopmode -file-line-error \
  -outdir=build probability-theory.tex
```

All compilation artifacts are written to `build/`. The global VS Code
LaTeX Workshop configuration also uses a project-local `build/` directory
when the `latexmk` recipe is selected.

## Directory Structure

```text
probability-theory/
├── probability-theory.tex
├── mathematics.cls
├── chapters/
│   ├── chap_01.tex
│   └── chap_02.tex
├── build/
└── README.md
```

- `mathematics.cls` is a reusable mathematics document class containing the
  page layout, mathematical packages, colors, boxed environments, and
  theorem environments.
- `probability-theory.tex` is the project entry point and defines the title,
  author, and chapter order.
- `chapters/` contains the manuscript source.
- `build/` contains the generated PDF and LaTeX auxiliary files and is
  excluded from Git.

## Reference

The main reference for this project is:

> Geoffrey Grimmett and David Stirzaker, *Probability and Random Processes*,
> Fourth Edition, Oxford University Press, 2020.

Publisher page:
[Oxford University Press: *Probability and Random Processes*](https://india.oup.com/product/probability-and-random-processes-9780198847595)

## Current Status

The chapter structure is still under development and is currently somewhat
mixed. For example, Chapter 2 combines:

- random variables and their distributions;
- expectation, variance, and covariance;
- multivariate normal distributions;
- Hölder's and Minkowski's inequalities;
- modes of convergence;
- the laws of large numbers; and
- the central limit theorem.

The material may later be reorganized into chapters on random variables and
distributions, integration and moments, convergence, and limit theorems.
The current structure is mainly intended to support continued writing and
revision rather than to represent the final textbook organization.

## Template Interface

The main document uses the reusable class with:

```latex
\documentclass{mathematics}
```

The title page reads the title, author, and date supplied by the main
document. The front matter is generated with:

```latex
\makefrontmatter
```

This allows the same class to be reused for notes on other mathematical
subjects.
