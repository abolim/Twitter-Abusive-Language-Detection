# Replication of Comparative Studies of Detecting Abusive Language on Twitter
This is a repository for the replication project for the Winter 2020 Data Reproducibility course in the Master of Data Science program at University of Washington.

<!-- badges: start -->
[![Launch Rstudio Binder](http://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/abolim/Reproducibility-Research-Replication/master?urlpath=rstudio)
[![R build status](https://github.com/abolim/Reproducibility-Research-Replication/workflows/R-CMD-check/badge.svg)](https://github.com/abolim/Reproducibility-Research-Replication/actions)
[![DOI](https://img.shields.io/badge/OSF-DOI%3A%2010.17605%2FOSF.IO%2FRX9SQ-brightgreen)](https://doi.org/10.17605/OSF.IO/RX9SQ)
<!-- badges: end -->

### CONTRIBUTORS

1. [Aboli Moroney](https://github.com/abolim "Aboli's Github page") <a itemprop="sameAs" content="https://orcid.org/0000-0003-1226-3185" href="https://orcid.org/0000-0003-1226-3185" target="orcid.widget" rel="me noopener noreferrer" style="vertical-align:top;"><img src="https://orcid.org/sites/default/files/images/orcid_16x16.png" style="width:1em;margin-right:.5em;" alt="ORCID iD icon"></a>

2. [Harini Ram Prasad](https://github.com/hariniramp "Harini's Github page") <a itemprop="sameAs" content="https://orcid.org/0000-0001-5419-8030" href="https://orcid.org/0000-0001-5419-8030" target="orcid.widget" rel="me noopener noreferrer" style="vertical-align:top;"><img src="https://orcid.org/sites/default/files/images/orcid_16x16.png" style="width:1em;margin-right:.5em;" alt="ORCID iD icon"></a>

3. [Mayank Goel](https://github.com/mickkygoel "Mayank's Github page") <a itemprop="sameAs" content="https://orcid.org/0000-0002-2458-910X" href="https://orcid.org/0000-0002-2458-910X" target="orcid.widget" rel="me noopener noreferrer" style="vertical-align:top;"><img src="https://orcid.org/sites/default/files/images/orcid_16x16.png" style="width:1em;margin-right:.5em;" alt="ORCID iD icon"></a>

4. [Samarth Modi](https://github.com/samarthjmodi "Samarth's Github page") <a itemprop="sameAs" content="https://orcid.org/0000-0003-0681-231X" href="https://orcid.org/0000-0003-0681-231X" target="orcid.widget" rel="me noopener noreferrer" style="vertical-align:top;"><img src="https://orcid.org/sites/default/files/images/orcid_16x16.png" style="width:1em;margin-right:.5em;" alt="ORCID iD icon"></a>

### CONTENTS

Lately, there has been a lot of effort and research on identifying content that is abusive or offensive on online and social media. Twitter recently published a relatively large and reliable dataset on â€˜Hate and Abusive Speech on Twitterâ€™. As Data Scientists, we understand the need to find the best methods and data for identifying such content and flagging it as inappropriate.
 
In this repository, our aim is to replicate some of the findings in a research paper that performs a comparative study and provides suggestions for using additional features and data for improving such classification of hate and abusive speech using Twitter data.
Using the data and code provided by the authors, we aim to replicate the efficacy and accuracy of Logistic Regression model presented in this paper. The original paper had a comparative study of 5 different machine learning and deep learning algorithms. However, for our replication purpose we chose Logistic Regression model using word-level features as the authors have stated that this model outperformed all the machine learning techniques and had an F1-score which was equivalent to the best CNN model. For our project, we also had limited computational resources due to which execution of other machine learning and deep learning models was out of scope.

Citation: Lee, Y., Yoon, S., & Jung, K. (2018). Comparative studies of detecting abusive language on twitter. arXiv preprint arXiv:1808.10245.

URL: https://arxiv.org/abs/1808.10245

Git Repository: https://github.com/younggns/comparative-abusive-lang/blob/master/README.md

### DATA

All data files required for our replication project can be found in the 'data' directory in this repository.
URL: https://github.com/abolim/Reproducibility-Research-Replication/tree/master/Data

This directory contains all details about the original data which was used by the authors of the research as well as the data which was sampled and processed for this replication study. Please refer the README.md in the data directory for additional details.

### ANALYSIS

The analysis directory contains the R Markdown report detailing the procedure and results of this replication study. This directory also contains the intermediate outputs, R scripts, data and images required to Knit the R Markdown report file successfully. For additional details, please refer the README.md in this directory.
URL: https://github.com/abolim/Reproducibility-Research-Replication/tree/master/analysis

### DEPENDENCIES

OS type and version: Windows 10 Pro, Version 1903, OS build 18362.535

System type: 64-bit OS, x64-based processor

R version: >=3.6.2

R packages and versions:

|R Package   	    |     Version            |
|---------------|:-----------------------|
|CARET	       |   6.0-84|
|future	        |  1.16.0|
|tm	            |0.7-7|
|quanteda	            |1.5.2|
|Liblinear	            |2.10-8|
|stringr	            |1.4.0|
|here	            |0.1|
|ggplot2	            |3.2.1|
|wordcloud	            |2.6|
|bookdown	            |0.17|
|dplyr	            |0.8.3|
|knitr	            |1.28|

### LICENSE

The project is licensed as MIT. Please read our [license details](LICENSE.md). 

### CONTRIBUTING

We welcome contributions from everyone. If you would like to make a contribution, please read our [contributor guidelines](CONTRIBUTING.md). Please note that this project is released with a [Contributor Code of Conduct](https://github.com/abolim/Reproducibility-Research-Replication/blob/master/CODE_OF_CONDUCT.md). By participating in this project you agree to abide by its terms.

