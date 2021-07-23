# ML Lifecycle Dashboard

Machine Learning Lifecycle Dashboard displays the entire Machine Learning Lifecycle in a Dashboard

## Shortcomings of ad-hoc Machine Learning model development

Doing ML model development without a management framework gets very complicated. To name just a few challenges:

* No record of experiments: In an organization, multiple colleagues are likely to be working on the same problem, and they might be running their own set of experiments. 

* In such a scenario, making sure that duplicate work is not being done is essential but hard to implement. 

* For example, colleague A might want to try something out which has already been tried out by colleague B; but he has no way of knowing that, so he has to run the experiment himself. This should be avoided.

* Insights lost along the way: In a rapid iterative experimentation phase, an insight generated in an earlier experiment might be lost when the researcher moves on to the next iterations of that model. 

* A solution would be to keep detailed notes manually, but no one does that just because it’s manual and requires a ton of effort.

* Difficult to reproduce results: Reproducing a particular experiment becomes problematic as that would require storing the model code along with the hyperparameters and the dataset manually, for each and every iteration of the model. This requires a ton of effort, so in practice, no one does it.

*  Cannot search for or query models: Once a lot of experiments have been done, querying the past models would be a vital source of information and insights, but without solid version control and metadata tracking system, this becomes nearly impossible.

* Difficult to collaborate: Once a candidate model has been developed and is up for review, how would the reviewer effectively review the model? 


This problem becomes progressively more challenging as the team size grows. Issue trackers, JIRA boards, pull requests are useful tools designed to solve this problem in the realm of software development, but we need something analogous to that for ML model development too.


## What is the Machine Learning Life Cycle?

The machine learning life cycle is the cyclical process that data science projects follow. 
It defines each step that an organization should follow to take advantage of machine learning and artificial intelligence (AI) to derive practical business value.

1: Business context and define a problem
2: Translating to AI problem and approach
3: Milestones and Planning
4: Data gathering and Understanding
5: Data preparation
6: Data Cleaning
7: Exploratory data analysis
8: Feature engineering and selection
9: ML Model assumption and checks
10: Data preparation for modelling
11: Model Building
12: Model Validation & Evaluation
13: Predictions & Model deployment

### 1. Define Project Objectives:
 The first step of the life cycle is to identify an opportunity to tangibly improve operations, increase customer satisfaction, or otherwise create value.

### 2. Acquire and Explore Data: 
 The next step is to collect and prepare all of the relevant data for use in machine learning. 

 This step gives more insights into the data and how the data is related to the target variable. This step involves mainly:
1. Uni-variate analysis
2. Bi-variate/Multi-variate analysis
3. Pivots
4. Visualization and Data Insights

Data Preprocessing : 

1. Creating dummy variables
2. Over Sampling and Under Sampling (if the data is imbalanced)
3. Split the data into train and test

### 3.Model Data:
 In order to gain insights from your data with machine learning, you must determine your target variable, the factor on which you wish to gain deeper understanding.

### 4. Interpret and Communicate:
 One of the most difficult tasks of machine learning projects is explaining a model’s outcomes to those without any data science background.
 Traditionally, machine learning has been thought of as a “black box” because it is difficult to interpret insights and communicate the value of those insights to stakeholders and regulatory bodies.
 The more interpretable your model, the easier it will be to meet regulatory requirements and communicate its value to management and other key stakeholders.

### 5. Model Training

This stage is concerned with creating a model from the data given to it. At this stage, a part of the training data is used to find model parameters such as the coefficients of a polynomial or weights of in machine learning which helps to minimize the error for the given data set. The remaining data are then used to test the model. These two steps are generally repeated a number of times in order to improve the performance of the model.

### 6. Parameter Selection

It involves the selection of the parameters associated with the training which are also called the hyperparameters. These parameters control the effectiveness of the training process and hence, ultimately the performance of the model depends on this. They are very much crucial for the successful production of the machine learning model.

### 7. Transfer Learning

Since there are a lot of benefits in reusing machine learning models across various domains. Thus, in spite of the fact that a model cannot be transferred between different domains directly, hence it is used for providing a starting material for beginning the training of a next stage model. Thus it significantly reduces the training time.

### 8. Model Verification

The input of this stage is the trained model produced by the model learning stage and the output is a verified model that provides sufficient information to allow users to determine whether the model is suitable for its intended application. Thus, this stage of the machine learning lifecycle is concerned with the fact that a model is working properly when treated with inputs that are unseen.

### 9. Deploy the machine learning model

In this stage of the Machine learning lifecycle, we apply to integrate machine learning models into processes and applications. The ultimate aim of this stage is the proper functionality of the model after deployment. The models should be deployed in such a way that they can be used for inference as well as they should be updated regularly.

### 10. Monitoring

It involves the inclusion of safety measures for the assurance of proper operation of the model during its life span. In order to make this happen proper management and updating are required.




## Currently under development 
