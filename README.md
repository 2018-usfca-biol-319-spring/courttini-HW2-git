# GitHub Flow homework assignment for BIOL319
## Due as a pull request on Monday, February 12, 2017 before 11:59 pm

The **goal of this assignment** is to help you continue to learn to use R and RStudio to analyze and visualize ecological data, doing so in the context of a version-controlled workflow, and submitting your work as a Pull Request on GitHub.

**General overview:** You will write one R script for this assignment. It should read in the `ltr_massdata.csv` file that is in the `data` directory, use the `subset()` function to select subets of that data, and then plot those data (more details below). Finally, you will need to write several paragraphs interpreting those results in the context of background you read about each of the NEON regions and sites, which is [available here](http://www.neonscience.org/field-sites/field-sites-map/list). For example, [here's a description](http://www.neonscience.org/field-sites/field-sites-map/BART) of the Bartlett Experimental Forest (short ID: BART).

Please follow the instructions carefully and read them all before getting started.

This second assignment will be worth 10 points. The grading breakdown will be as follows:

* 5 points - Completes all required steps (as outlined below)
* 2.5 points - R script is appropriately commented and well organized
* 2.5 points - Appropriate use of git to version control the steps, including adding and committing the appropriate files at the specific steps below, and writing informative and appropriately formatted commit messages

You must submit your work as a Pull Request to the class organization ('2018-usfca-biol-319-spring') on GitHub by 11:59 pm on Monday, February 12 for full credit. Late assignments will not be accepted, since we will be peer reviewing each other's code after it is submitted.

Steps:

1. Fork this repository to your own GitHub account.
2. On your laptop, in RStudio, select File > New Project...
3. Choose 'Version Control', then 'git', then paste the URL from your fork and hit tab
4. This will autofill the project name, you can choose where this repository folder will be on your laptop
5. Select 'Open in New Session', then 'Create Project'
6. This should download the repository from GitHub and set up a new project for you in RStudio
7. Now, just as we did last week, create a new R script file in the code directory that accomplishes the following:
  * Reads in the `ltr_massdata.csv` dataset from the `data` directory
  * Uses the `subset()` function to select all measurements from only one `SiteID` (it can be any of them) - the available sites are: "BART", "GUAN", "HARV", "SRER", "STEI", "TREE", "UNDE"
  * Create a properly labelled scatterplot with the variable `collectDate` on the x axis and `dryMass` on the y axis. You will need to use the `as.POSIXct()` function like we did in class in order to have the x axis format properly. Save this scatterplot into a pdf file in the `output` directory.
  * Repeat this process (subsetting to a new variable, making a scatterplot, saving to a file) with a second site of your choice.
8. Add and commit your R script as you work on it.
8. Create a new file in RStudio called `Analysis.txt`. In this file, write one to two paragraphs describing the differences you see in the two plots from the different sites. What do you think could be the ecological reason for the differences or lack of differences that you observed, based on your reading of the overview information about each of the sites on the NEON website.
9. Add and commit this Analysis file when you are done.
10. Push your commits back to your repository on GitHub.
11. Open a pull request back to the class repository to submit your assignment.
12. Be sure to write [meaningful commit messages](https://chris.beams.io/posts/git-commit/) and a descriptive Pull Request title and description.

Don't hesistate to ask questions on Piazza as you work!
