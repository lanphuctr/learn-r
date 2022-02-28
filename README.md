# LeaRn R with me
This repo keeps track of my progress in learning R.

# Language Overview and Setup

## History
	
If you think it’s weird enough to name a programming language R, that’s not the end of the story – R has a sister named S. However, R has its own reason to be named that way; its parents are believed to be two statisticians **R**oss Ihaka and **R**obert Gentleman at the University of Auckland, New Zealand, whose first names both start with R. 

Though R was born 15 years later than S in 1991, they are (almost) twins since much code written for S can be run in R. “Much”, not all; there are differences. I think R is more open(-minded) than S as R is a free open-source implementation of S.

Unlike its peer, Python, a multi-purpose language, R is a programming language and environment for statistics and graphics and mainly used by statisticians and data miners. Here comes the not-yet-settled debate on which one is better, R or Python, in data analytics and data science (differences between these two easily mistaken concepts can be found [here](https://www.northeastern.edu/graduate/blog/data-analytics-vs-data-science/)). If you are interested in this debate, you can find more information in [this article](https://towardsdatascience.com/data-science-101-is-python-better-than-r-b8f258f57b0f) in Towards Data Science, where the author compares R with Python in terms of availability, visualization, predictive analytics and performance, or on [DataCamp](https://www.datacamp.com/community/tutorials/r-or-python-for-data-analysis), which provides a quite comprehensive overview of the differences between the two languages. 

I thought about sticking to Python because of its equal power for data analysis; however, I would still give R a try as then I would have more freedom of choice and flexibility switching between the two languages, depending on the task at hand. 

## Getting Started

### Downloading and Installing R
* You can easily download and install R with detailed instructions [here](https://cran.r-project.org/).

* CRAN (Comprehensive R Archive Network) is a network that stores up-to-date R code and documentation and also manages packages used in R. There are thousands of readily available packages for use and you can even submit your own package to CRAN. 

### Setting up the Integrated Development Environment
R is mostly run on RStudio, an IDE itself. In this project, I’m going to use RStudio. I also know that it can be run on Jupyter Notebook, which is a notebook interface. 

Depending on your operating system (OS), the instructions on how to download and install RStudio IDE for free can be found [here](https://www.rstudio.com/products/rstudio/download/).

Note: 
* Since you may have already installed R, you can skip the first step in this instruction that asks you to install R 3.0.1+. 
* Linux users need an extra bit of work before installing RStudio.

## Writing the first program in RStudio

### Getting familiar with RStudio
When you first open RStudio, there will be 3 panes on the screen:
* On the left, there is a R console.
* On the right, the upper pane includes 4 tabs, _Environment, History, Connections_ and _Tutorial_.
* On the right, the lower pane includes 5 tabs, _Files, Plots, Packages, Help_ and _Viewer_.

### Creating a new script in R
To start writing a new script, click on `File` at the top-left corner, then `New File` and finally `R Script`. Or you can just press this keyboard shortcut `Ctrl+Shift+N`.

### Hello World program
It's very simple to run a Hello World program in R. After you've created a new script, the top-left pane will be where you write your program.

Here's the code:
```{r}
print("Hello World!")
```

Press `Ctrl+Enter` or click `Run` on the top-corner of that pane and it'll be printed in the _Console_. That's everything you need to run your first Hello World! program.

Save it by pressing `Ctrl+S` as `HelloWorld.R`. 

## Resources that make it simpleR to learn R
* [Coursera](https://app.datacamp.com/learn/career-tracks/data-scientist-with-r)
* [DataCamp](https://app.datacamp.com/learn/career-tracks/data-scientist-with-r)
* [edX](https://www.edx.org/professional-certificate/harvardx-data-science)

## References
* https://www.r-project.org/about.html
* https://en.wikipedia.org/wiki/R_(programming_language)#cite_ref-Morandat_1-0
* https://towardsdatascience.com/data-science-101-is-python-better-than-r-b8f258f57b0f
* https://www.datacamp.com/community/tutorials/r-or-python-for-data-analysis
