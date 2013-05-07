PNN: Probabilistic neural network for the statistical language R
================================================================

Description
-----------

The program *PNN* implements the algorithm proposed by Specht (1990). It is written in the [R](http://www.r-project.org/) statistical langage. It solves a common problem in automatic learning. Knowing a set of observations described by a vector of quantitative variables, we classify them in a given number of groups. Then, the algorithm is trained with this dataset and should guess afterwards the group of any new observation. This neural network has the main advantage to begin generalization instantaneously even with a small set of known observations. It is delivered with four functions — *learn*, *smooth*, *perf* and *guess* — and a dataset. The functions are documented with examples and provided with unit tests. [Continue reading →](http://flow.chasset.net/pnn/) 

License
-------

This program is released under the [GNU Affero General public license](http://www.gnu.org/licenses/agpl.html).

How to cite
-----------

Chasset P.-O. (2013). *Probabilistic neural network for the R statistical language*. Software, http://flow.chasset.net/pnn/.

Reference
---------

Specht D.F. (1990). *Probabilistic neural networks*. Neural networks, 3(1):109–118.

R Core Team (2012). *R: A language and environment for statistical computing*. R Foundation for Statistical Computing, Vienna, Austria. ISBN 3-900051-07-0, http://www.R-project.org/.
