# Macroeconomic Stock Analysis

## Background
Using stock price data to predict future stock prices as well as examining how macroeconomic factors will affect future stock prices as well (primarily focusing on inflationary data afflicting stock movement).

Due to the volatility in the current market, being able to predict how the stock market will react in the upcoming months could help us significantly with our financial decisions. 

## Data Source(s)
- https://developer.tdameritrade.com/
- https://fred.stlouisfed.org/

## Google Slides
https://docs.google.com/presentation/d/1VC41FsF4wxUC1xERXznkjo1RJuBwVhkvmlMBqATeigs/edit?usp=sharing

## Questions
- How do macro economic factors such as inflation and interest rates affect stock prices?
- Which industries does it affect the most?
- Can you predict future stock prices using the stock’s price history?

## Team Communication Protocols and Availability
- Primary communication: Slack
- Availability:
    - **Alex** - weekdays after 7pm, heads up on weekends (4 days advanced)
    - **Evan** - weekdays after 7pm, Saturday free, Sunday free after 6pm
    - **Janice** - weekdays after 6:30pm, Saturday free mornings before 1pm, Sundays free
    - **Randy** - weekdays after 3pm, Sunday evening, Saturday free

## Project Outline
- WEEK 1
    - Select topic and datasets
    - Submit proposal
    - Examine and clean data
- WEEK 2
    - Data Exploration: review available data sets, agree to a selection of indeces to use, and clean
    - Database & schema: draft structure
    - Machine Learning Model: draft ML model and connect to provisional database
- WEEK 3
    - Machine Learning Model: submit working code, determine additional training to take place
    - Google slides: draft presentation slides
    - Dashboard: have images, implement interactive element
- WEEK 4
    - Google slides: finalize and split presentation

## Event Log

| Date | Task |
| ------------- | ------------- |
| Sun 6/12/2022  | Discuss project idea, review data |
| Tue 6/14/2022  | Submit final proposal, brainstorm questions and visuals, clean data  |
| Thu 6/16/2022  | Brainstorm visuals, clean data |
| Tue 6/21/2022  | Machine Learning Model |
| Wed 6/22/2022  | Discuss machine learning model, potential new project proposal |
| Thu 6/23/2022  | New proposal approved, review and clean data, start work on Machine Learning Model |
| Tue 6/28/2022  | Machine Learning Model, database, schema, Google slides draft |
| Thu 6/30/2022  | Finalize database & Machine Learning Model, review HTML page |
| Tue 7/5/2022  | Google slides, data visualization discussion, Tableau |
| Thu 7/7/2022  | Google slides, Tableau, HTML page |
| Sun 7/10/2022  | Finalize presentation |

# Analysis

# Introduction
I plan on predicting future gains on certain sectors of the stock market by analyzing various different stocks using a [Machine Learning Model](MachineLearning.ipynb), specifically a RandomForestClassifier model. This data was obtained using an API key from TD Ameritrade,[extract price history](extract_price_history.ipynb), and extracted it in intervals of months from 2002 to present day. The macro economic factors were obtained by extracting the data from various websites as csv and xlsx, [Raw Data](RawData). Following extracting the data, it was [cleaned](raw_data.ipynb) to needed format. 

# Machine Learning Analysis
For preliminating data preprocessing I began by concating all of the csvs together selected from QQQ index to make my model. For my other model I only used  the QQQ csv to predict future gains. I chose to use inflation, interest, unemployment, retail sales, and industrial output in my data because these economic factors can reflect companys' performance and stock prices. I then created a future column that has the future gain of the next month. Following this I ran it through a function adding in all of the macro economic data to each row by year and month.

![image](https://github.com/evanbruno617/Macroeconomic_Stock_Analysis/blob/Evan/Images/function_code.png)

Following adding in all of this data I found the percent change of each of these columns and create a new column with it and then dropped the null values. After this I created a binary column that took the value from the future column and made it 0 if the value was negative or zero, and made it 1 if the value was greating than zero. 

Following this I split my data into training and testing sets with the testing being the "R/G" using all of the percent change of the economic factor data as well as gain column and the past column which has the percent change of the last month. I chose this data by trial and error seeing which columns produced the highest accuracy and using "feature_importances" function to see which columns had the highest influence. This model using economic data improves the accuracy signifcantly. Using a random state of 45 it predicts QQQ gains with a 65% accuracy but a model using only "Open", "Close", and "Volume" it has an accuracy of 50%. 

![image](https://github.com/evanbruno617/Macroeconomic_Stock_Analysis/blob/Evan/Images/predict_qqq.png)

The confusion matrix of this model the precision accuracy is 75% meaning of the predicted positive gain 75% of those predictions were right. The negative gain prediction had 50% accuracy. The recall for negative gain was 57% meaning of the total negative gain outcomes it predicted 57% of them and for the positive recall it had 69% accuracy. The recall here doesn't matter as much because we are relying on the precision accuracy. Having 75% accuracy for predicting positive gains is ideal

![image](https://github.com/evanbruno617/Macroeconomic_Stock_Analysis/blob/Evan/Images/prediction.png)

Then with the other model I used the data from all of the stocks data which ueses the economic data to predict future gain. By using this model it show how simliar these stocks are and how they effect the QQQ index. It shows how accurate this model is to predict QQQ future gain with same the economic conditions and gain of each of these stocks. 

![image](https://github.com/evanbruno617/Macroeconomic_Stock_Analysis/blob/Evan/Images/simliarity.png)

I chose to use a RandomForestClassification model because since stocks have a lot of variability and volatility in their price action history I wanted to use this model to model stronger models off of weak ones in order to better understand how stock prices would be affected by these factors. The limitation of this model is being slower to predict data, however since the data being predicted is by month, this won't be an issue with predicting data in a timely manner. Benfit with using this model is that it performs classfication tasks with high accuracy and can also handle big data.

![image](https://github.com/evanbruno617/Macroeconomic_Stock_Analysis/blob/Evan/Images/simliarity_matrix.png)

With the simliarity model the precision accuracy of predicting positive gain is 76% with the negative gain being 61%. This means that of the gains predicted to be positive 76% of them were true and of the gains predicted to be negative 61% were false. The recall of positive gains is 69% and the negative gains is 68% meaning that of the total negative gains the model predicted 68% of them and the total positive gains the model predicted 69% of them. 

## Presentation and visual 

[Html Page](https://evanbruno617.github.io/Macroeconomic_Stock_Analysis/)

[Google Slides](https://docs.google.com/presentation/d/1VC41FsF4wxUC1xERXznkjo1RJuBwVhkvmlMBqATeigs/edit#slide=id.g13a96ebd9fe_0_216)
