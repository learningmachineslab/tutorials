---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
permalink: index.html
---


## Tutorials in machine learning for physics education research
This is a repo has a number of tutorials that are meant to help PER researchers get started with machine learning projects. It assumes that you have an existing understanding of python syntax. Learning goals for these tutorials are:

1. Have an understanding of different ways to explore data using the `pandas` and `matplotlib` libraries
2. Become familiar with the `model->train->score` paradigm of `sklearn`
3. Have an understanding of the code implementations of `sklearn` for different machine learning tasks (namely regression, classification, and clustering)
4. Have an understanding of how to connect a sql database to a `pandas` dataframe
5. Have an understanding of the `train_test_split` paradigm of `sklearn`
6. Have an understanding of regression model evaluation
7. Have an understanding of classification model evaluation

This collection of tutorials should not be considered exhaustive of machine learning topics, nor is it meant to produce a deep conceptual understanding of how the algorithms work. Instead it is meant for onboarding researchers unfamiliar with the basics of conducting applied machine learning research in PER via workshops or self learning.

The format of all of the notebooks is:

`exercise`
`exercise_with_solutions`

Please do not feel you cannot look at the solutions and must figure it out on yourself. It is totally acceptable to look at the solutions to figure your way out. But it should not be copy and paste code, the goal is to develop understanding of what each step is doing.

## Rules for submitting

1. When committing notebooks please include descriptions of how to use them in the notebooks.
2. R and Python notebooks are accepted. Please use Python 3.x.
3. If writing Python Please follow PEP-8 where possible. More information on [PEP-8 can be found here](https://www.python.org/dev/peps/pep-0008/)
4. If your Python notebook has library requirements please update the environment.yml file to reflect the new requirements.
5. For new notebooks please create a branch with a relevant title and commit and then merge with the master. This will avoid conflicts for people working on different topics.

If you have questions people are always available on Slack!

## Using this code in your projects

We are happy if you use this code in your projects! If you use any code found here, please attribute it to us with the following citation:

`John M. Aiken, Robert Solli, Rachel Henderson, & Marcos D. Caballero. (2019, July 17). learningmachineslab/tutorials: Tutorials for ML in PER (Version v1.0). Zenodo. http://doi.org/10.5281/zenodo.3339401`

Thanks!
