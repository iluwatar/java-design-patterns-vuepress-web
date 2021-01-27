---
layout: post
title: Auto Generate Class Diagrams With UML Reverse Mapper
author: ilu
---

![Whiteboard]({{ site.baseurl }}/assets/whiteboard-small.jpg)

## Introduction

Often when a person is starting to get familiar with a new project, the first thing he wants to see is the documentation. The needs are a bit different depending on what he wants to do with the project, but the common ground is to grasp a high level understanding. The users of the software are typically concerned with how to install and use it. The developers are additionally interested in how it works. The project documentation needs to fulfill many purposes, but the minimum set that any significant program's documentation should answer consists of the following:

1. What is it and what problems does it solve
2. How to install and use it
3. How to build and develop it
4. What features will be developed next and how to contribute

Nowadays it's good practise to put all this information in the project's `README.md` file. If everything does not fit in there nicely, just include the links to the subpages.

For topic 3, [Unified Modeling Language (UML)](https://en.wikipedia.org/wiki/Unified_Modeling_Language) provides tools to describe software design and architectural blueprints in visual manner. The most commonly used UML diagrams include:

- Class diagrams
- Composite structure diagrams
- Sequence diagrams
- Activity diagrams
- State machine diagrams

These are excellent industry standard tools to quickly convey large amounts of knowledge about program design. But they also have their downsides.

## The problem with documentation

Documentation is good and more is better, right? It quickly turns out that it's not so black and white. Documentation is good only when it's up to date. Software changes rapidly and it's hard to keep everything updated. In an ideal world the documentation would be revised every time the software changes. With any non-trivial project containing decent documentation this quickly becomes a nuisance. The documentation may have been written by someone else and the developer needs to read everything just to get to know what needs to be updated. Required documentation changes may take as long or even longer than the source code change and testing. The other quite popular alternative is to skip the documentation updates and accumulate technical debt in form of stale documentation.

## A better approach

We have recognized this problem in [Java Design Patterns](https://java-design-patterns.com/) project. Since the project is mainly aimed at architects and developers, it is natural that the documentation contains also UML diagrams. In the first phase we want to provide a class diagram with all the design pattern examples. For a long time we drew them by hand, but obviously after some time most of them were no longer up to date.

This lead us to develop our custom solution to the problem. It's a generator that creates UML diagrams automatically from the source code. The name of the program is [UML Reverse Mapper](https://github.com/iluwatar/uml-reverse-mapper). It consists of two modules: urm-core is a command line tool (Java jar file) and urm-maven is a [Maven](https://maven.apache.org/) plugin. Both of them can be used to generate UML diagrams.

## Showcases

The first version of [UML Reverse Mapper](https://github.com/iluwatar/uml-reverse-mapper) can generate class diagrams. It supports two alternative presenters: Graphviz and PlantUML. Here are example outputs from Java Design Patterns [Abstract Factory](https://github.com/iluwatar/java-design-patterns/tree/master/abstract-factory) and [Mediator](https://github.com/iluwatar/java-design-patterns/tree/master/mediator) code examples. They are produced by the PlantUML and Graphviz presenters respectively.

![Abstract Factory]({{ site.baseurl }}/assets/abstract-factory.png)

![Mediator]({{ site.baseurl }}/assets/mediator.png)

## Where to go from here

[UML Reverse Mapper](https://github.com/iluwatar/uml-reverse-mapper) is an open source tool released under the permissive [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0). In the first stage it can output class diagrams but its extensible architecture enables development of other diagram types too. It has huge potential to solve part of the stale documentation problem that almost all the software projects are experiencing. We hope you find the tool useful. Maybe even enough to contribute in its development.
