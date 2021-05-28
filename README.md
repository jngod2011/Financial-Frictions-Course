Shield: [![CC BY-NC-SA 4.0][cc-by-nc-sa-shield]][cc-by-nc-sa]

This work is licensed under a
[Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License][cc-by-nc-sa].

[![CC BY-NC-SA 4.0][cc-by-nc-sa-image]][cc-by-nc-sa]

[cc-by-nc-sa]: http://creativecommons.org/licenses/by-nc-sa/4.0/
[cc-by-nc-sa-image]: https://licensebuttons.net/l/by-nc-sa/4.0/88x31.png
[cc-by-nc-sa-shield]: https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg

# Course: Financial Frictions, Monetary and Macroprudential Policy and Household Heterogeneity

This course is written for the EUI Econ PhD students as an advanced half-credit course. 

In a nutshell:

:round_pushpin: Gives an introduction to DSGE models and their solution with the [Dynare](https://www.dynare.org) package

:round_pushpin: Studies the incorporation of financial frictions in DSGE models 

:round_pushpin: The use of DSGE models for the design of monetary policy and financial regulation

:round_pushpin: Extends modelling framework to household heterogeneity and studies the impact of monetary policy

## Day 1: DSGE models overview, the RBC model & Dynare introduction

During the first lecture we will go through a short introduction on DSGE models and their various solution techniques. 
Then we will set up the very simple RBC model and learn how to use Dynare to solve it (get the policy functions).
This is of hight importance as we will go through much more complicated models in the next lectures

### Material

- DSGE models introduction [slides](Part1_Introduction/Introduction.pdf)
- RBC model set up and Dynare introduction [slides](Part1_Dynare/slides/Dynare.pdf)
- [Codes](Part1_Dynare/codes) to solve the RBC model in Dynare 

#### Take home exercise  

- Extend the simple RBC model to include investment adjustment costs as specified in the end of [slides](Part1_Dynare/slides/Dynare.pdf)
- First solve the model by pen and paper and add the new parts in Dynare to find the policy rules
- Construct a vector [0:4] with step=1 grid for the adjustment cost parameter  <img src="https://render.githubusercontent.com/render/math?math=\phi_X">  and show the different IRFs for output, consumption, investment and labour hours for every level of the parameter
- Solution will be uploaded in the Dynare [folder](Part1_Dynare)

##### :computer: Prerequisites 
- The model file runs with Matlab and Dynare 4.6.x
- The mod file the SS file need to be at the same folder

## Day 2: Asymmetric Information 

In the second lecture we will cover one of the most widely used option for financial frictions in DSGE models, the assymetric information friction. 
This started from [Townsded (1979)](https://www.sciencedirect.com/science/article/pii/0022053179900310) and became widely used in a DSGE model from [Bernanke, Gertler and Gilchrist (1999)](https://www.nber.org/system/files/working_papers/w6455/w6455.pdf). We will go through the latter in detail both in terms of theory and coding/ solving the model with Dynare

### Material

- BGG model presentation [slides](Part2_Assymetric_Information/slides/Asym_Information.pdf)
- BGG equations [document](Part2_Assymetric_Information/slides/BGG_equations.pdf)
- [Codes](Part2_Assymetric_Information/codes) to solve the BGG model in Dynare 
- Codes include both flexible price and sticky price specification of the real sector, together with the BGG friction

### Take home exercise  
- Continue with part 2 of the previous week's exercise
- Compare BGGflexi.mod and BBGsticky.mod, the model with flexible and sticky prices both are in [this folder](Part2_Assymetric_Information/codes)
- Provide the impulse responses of both models in the same graph for output, consumption, investment, spread, loans and entrepreneurs' new worth
- For the cases of a positive productivity and a risk shock
- This [file](Part2_Assymetric_Information/codes/BGGplots_lecture.m) is the file I used for the lecture plots, it will help!

## Day 3: Limited commitment

In the third lecture we will cover the second most used method of introduting financial frictions in DSGE models, the limited commitment friction. 
The seminal paper of  [Kiyotaki and Moore (1997)](https://www-users.york.ac.uk/~psm509/ULB2012/KiyotakiMooreJPE1997.pdf) (it is even in the [Wikipedia](https://en.wikipedia.org/wiki/Kiyotaki–Moore_model)) started the tradition of borrowing constraints due to limited commitment of households to repay their denbts. After the financial crisis of 2008, this stream has regained popularity by a series of seminal papers. In this lecture we will go through the [Gertler and Kiyotaki (2009)](https://www.frbsf.org/economic-research/files/gertler_kiyotaki.pdf) paper which introduced this friction in the banking sector. 

### Material

- GK model presentation [slides](Part3_Limited_Commitment/slides/Limited_Comm.pdf)
- [Codes](Part3_Limited_Commitment/codes) to solve the GK model in Dynare 

### Take home exercise  
- In the codes provided, no calibration has taken place, I have just perform a parametrization of the model 
- You have to treat the parameter (theta), <img src="https://render.githubusercontent.com/render/math?math=\theta">, as a free parameter and calibrate it such that the leverage (phi), <img src="https://render.githubusercontent.com/render/math?math=\phi">, in steady state is 4.5
- Show that's the differences in IRFs after a capital quality shock with the non-calibrated version

## Day 4: Monetary and Macroprudential Policy 

In this lecture we will go through some extensions of the models we have seen in the previous lecutres in the direction of monetary and macroprudential policy.
Specifically:
- We extend the [Gertler and Kiyotaki (2009)](https://www.frbsf.org/economic-research/files/gertler_kiyotaki.pdf) model adding liquidity injections from the government to the banking sector
- We see an extension of the original GK model to the introduction of quantitative easing. Banks hold bonds and the government can purchase a fraction of these to stimulate the economy. This follows the the [Gertler and Karadi (2013)](https://www.ijcb.org/journal/ijcb13q0a1.pdf)
- We study a new class of models initiated by [Iacoviello (2005)](https://www.matteoiacoviello.com/research_files/AER_2005.pdf). In these models a loan to value constraint is introduced as a form of macroprudential policy
- Lastly, we see how easily the GK model can be changed to include a countercyclical buffer constraint similar to the Basel III framework

### Material

- [slides](Part4_Monetary_Macropru_Policy/slides/Monetary_MacroPru.pdf)

### Take home exercise  

There will be two parts of homework this week, and you can submit it in two weeks time. 
#### Part 1: Introducing liquidity injections in the GK model steady state

- Consider the model of GK with the liquidity injections and find the steady state of the model
- Use the code of the steady state for the original GK and extend this to include the liquidity injections
- Create a .m file and make the adjustments in the appropireate section with chi_m=0.001 and omega=0.5
- Find the values of leverage, return on capital and liquidity interest rate in steady state and report those values

#### Part 2: Introducing countercyclical capital requirements (CCyB)
- Consider the original model of GK and turn the $\theta$ parameter into a time varying parameter that follows the CCyB equation as shown in the lecture notes
- Plot the impulse responses for Y, C, I, N, leverage and spread after a capital quality shock of (std=1) for the cases of psi_k=0 and psi_k =0.15 where psi_k is the weight in the countercyclical buffer (see notes)

## Day 5: Simple Heterogeneity in DSGE Models

In this lecture we will go through introducing simple heterogeneity in DSGE models; we will focus on the two agents specification of the models ot TANK (two agents New-Keynesian Models). After a brief overview of the state of the literature and the alternatives to the full HANK models we will study three seminal papers in the literature.
Specifically:
- The seminal paper by [Gali, López-Salido and Vallés (2007)](https://onlinelibrary.wiley.com/doi/10.1162/JEEA.2007.5.1.227) where they introduce a two agent model in a quantitative framework
- [Bilbiie (2008)](https://ideas.repec.org/a/eee/jetheo/v140y2008i1p162-196.html) that uses a similar model to the GLV to provide analytical insights
- [Bilbiie (2020)](https://www.sciencedirect.com/science/article/pii/S0304393219300492) where it extends the two agent framework and incorporates a -tractable- HANK specification
 
### Material

- [slides](Part5_Simple_Heterogeneity/slides/Simple_Heterogeneity.pdf)

##  Final Evaluation

 Students are given with two options
 ### Option 1: Solving a Financial Frictions model 
 - This is mainly for those that want to continue with this in their PhD
 - Choose a paper of your choice with some financial friction component
 - Find the steady state and solve it in Dynare
 - Ideally, extend in in some dimension (e.g. add macroprudential regulation policy)
 - Write up a 3-4 pages report with results, analysis etc.
 - Joint works are encouraged 

 ### Option 2: Write a referee report or a research proposal
 #### Referee report
 - Pick a paper of your choice or from the course outline
 - Write a referee report
#### Research Proposal
 - Write a proposal concerning original research in one of the topics examined in the course
 - Write a referee report
 - The proposal could be an extension of one of the papers seen in the course, a new application of the models presented, or a new model/empirical analysis. 
 - The key is to stress the motivation of the proposed research, what is new, why it is interesting and/or important.

### Acknowledgments
This course has benefited from notes of
- The University of Surrey DSGE summer school [course on financial fricrtions](https://www.surrey.ac.uk/cpd-and-short-courses/science-and-art-dynamic-stochastic-general-equilibrium-dsge-modelling-advanced)
- Thomas Drechsel course on [The Macroeconomics of Imperfect Capital Markets](http://econweb.umd.edu/~drechsel/teaching/index.htm)
- Florin Bilbiie's [slides](https://sites.google.com/site/florinbilbiie/teaching) on heterogeneous agents models
