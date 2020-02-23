## DATA DETAILS

### Original Data

The original data used for this replication project can be in this directory as **'twitter-hate-speech-classifier-data.csv'**
URL: https://github.com/abolim/Reproducibility-Research-Replication/tree/master/Data

The link to the exact data used in the research is mentioned in the GitHub page by the authors.
The data itself is hosted in another GitHub repository called hatespeech-twitter managed by ENCASE (The organization for the ENCASE (ENhancing seCurity and privAcy in the Social wEb) Horizon 2020 European Research Programme). 
Following is the link to the author's repository hosting the data: https://github.com/ENCASEH2020/hatespeech-twitter

The raw data is available in csv format in a file titled hatespeech_labels.csv. This file contains Tweet IDs of approximately 100k tweets used in training and testing of the machine learning models. The IDs should be sufficient to extract all the data that we need to reproduce the research work.
 
Additionally, the owners of the data are open to sharing the full extracted data file upon request via email to a.m.founta@gmail.com

### Sampled Dataset for Replication

For our replication project, we have selected a random subset of 3000 tweets from twitter-hate-speech-classifier-data.csv. This selection has been made after several attempts to process all of the data on a local machine with limited processing power. **'sampled_tweet_dataset.csv'** data file contains the subset of size 3000 tweets from the original data that we use for replicating this project.


### Prepared Dataset for Replication

**'prepared_tweet_dataset.csv'** data file is the processed file which is an input to the 002-modeling.R code in the Analysis folder. This data file contains one-hot encoded data for the selected 3000 tweets which serves as an input to run the machine learning models. This dataset should be used to produce the figures that we have claimed to replicate using this project.
