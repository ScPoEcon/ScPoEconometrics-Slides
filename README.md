# ScPoEconometrics Slide Host

* Here you can look at the slide for the [ScPoEconometrics](https://github.com/ScPoEcon/ScPoEconometrics) course.
* This repo is frequently updated, so check back often.


## Slides

| Lecture | HTML | PDF | Tasks |
|---------|:----:|:---:|-------|
| Lecture 1: Introduction | [HTML](https://raw.githack.com/ScPoEcon/ScPoEconometrics-Slides/master/chapter_intro/chapter_intro.html) | [PDF](https://rawcdn.githack.com/ScPoEcon/ScPoEconometrics-Slides/master/chapter_intro/chapter_intro.pdf) | [HTML](https://raw.githack.com/ScPoEcon/ScPoEconometrics-Slides/master/chapter_intro/tasks/intro_tasks.html) [.Rmd](https://raw.githack.com/ScPoEcon/ScPoEconometrics-Slides/master/chapter_intro/tasks/intro_tasks.Rmd) |
| Lectures 2/3: Tidying, Visualising and Summarising Data | [HTML](https://raw.githack.com/ScPoEcon/ScPoEconometrics-Slides/master/chapter2/chapter2.html) | [PDF](https://rawcdn.githack.com/ScPoEcon/ScPoEconometrics-Slides/master/chapter2/chapter2.pdf) | [HTML]() [.Rmd]() |
| Lecture 4: Simple Linear Regression | [HTML](https://raw.githack.com/ScPoEcon/ScPoEconometrics-Slides/master/chapter3/chapter3.html) | [PDF](https://rawcdn.githack.com/ScPoEcon/ScPoEconometrics-Slides/master/chapter3/chapter3.pdf) | [HTML]() [.Rmd]() |
| Lecture 5: Introduction to Causality | [HTML](https://raw.githack.com/ScPoEcon/ScPoEconometrics-Slides/master/chapter_causality/causality.html) | [PDF](https://rawcdn.githack.com/ScPoEcon/ScPoEconometrics-Slides/master/chapter_causality/causality.pdf) | [HTML]() [.Rmd]() |
| Lecture 6: Multiple Linear Regression | [HTML](https://raw.githack.com/ScPoEcon/ScPoEconometrics-Slides/master/chapter4/chapter4.html) [PDF](https://rawcdn.githack.com/ScPoEcon/ScPoEconometrics-Slides/master/chapter4/chapter4.pdf)  | [HTML]() [.Rmd]() |
| Lecture 7: Linear Regression Extensions |
[HTML]() | [PDF]()  | [HTML]() [.Rmd]() |
| Lecture 8: Sampling [HTML](https://raw.githack.com/ScPoEcon/ScPoEconometrics-Slides/master/chapter6/chapter6.html) [PDF](https://rawcdn.githack.com/ScPoEcon/ScPoEconometrics-Slides/master/chapter6/chapter6.pdf) | [HTML]() [.Rmd]() |
| Lecture 9: Confidence Intervals and Hypothesis Testing | [HTML](https://raw.githack.com/ScPoEcon/ScPoEconometrics-Slides/master/chapter_CI_hypothesis/CI_and_hypothesis_test.html) | [PDF](https://rawcdn.githack.com/ScPoEcon/ScPoEconometrics-Slides/master/chapter_CI_hypothesis/CI_and_hypothesis_test.pdf) | [HTML]() [.Rmd]() |
| Lecture 10: Regression Inference | [HTML](https://raw.githack.com/ScPoEcon/ScPoEconometrics-Slides/master/chapter_reginference/reg_inference.html) | [PDF](https://rawcdn.githack.com/ScPoEcon/ScPoEconometrics-Slides/master/chapter_reginference/reg_inference.pdf) | [HTML]() [.Rmd]() |
| Lecture 11: Regression Discontinuity | [HTML](https://raw.githack.com/ScPoEcon/ScPoEconometrics-Slides/master/chapter-RDD/RDD.html) | [PDF](https://rawcdn.githack.com/ScPoEcon/ScPoEconometrics-Slides/master/chapter-RDD/RDD.pdf)  | [HTML]() [.Rmd]() |
| Lecture 12: Recap (*coming soon!*) |
[HTML]() | [PDF]()  | [HTML]() [.Rmd]() |

The suggested reading list can be found [here](https://github.com/ScPoEcon/ScPoEconometrics-Slides/blob/master/syllabus.md).

## Additional Lectures

Bootstrapping: More details about bootstrapping. [HTML](https://raw.githack.com/ScPoEcon/ScPoEconometrics-Slides/master/chapter_bootstrap/boostrap.html)

Differences-in-differences:
[HTML](https://raw.githack.com/ScPoEcon/ScPoEconometrics-Slides/master/chapter_did/chapter_did.html) [PDF](https://rawcdn.githack.com/ScPoEcon/ScPoEconometrics-Slides/master/chapter_did/chapter_did.pdf)

## Legal

You can copy and adapt this material for your purposes, as long as you give appropriate credit and share the work yourself  under same terms. Of course you can use the slides to teach in your classrooms. *Appropriate Credit* means that somewhere in your slides there is link back to this repo, indicating that this is what you are building upon. Click on the icon for details.

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.

## How to build

* These are simply Rmarkdown slides.
* So, in Rstudio, just click *knit*.
* To print slides as PDF, do 
```decktape chapter1.html chapter1.pdf --chrome-arg=--disable-web-security```
using the awesome [decktape](https://github.com/astefanutti/decktape)
