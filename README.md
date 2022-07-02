# Analysis

# Introduction
I plan on predicting future gains on certain sectors of the stock market by analyzing various different stocks using a [Machine Learning Model](MachineLearning.ipynb), specifically a RandomForestClassifier model. This data was obtained using an API key from TD Ameritrade,[extract price history](extract_price_history.ipynb), and extracted it in intervals of months from 2002 to present day. The macro economic factors were obtained by extracting the data from various websites as csv and xlsx, [Raw Data](RawData). Following extracting the data, it was [cleaned](raw_data.ipynb) to needed format. 

# Machine Learning Analysis
For preliminating data preprocessing I began by concating all of the csvs together selected from QQQ index to make my model. For my other model I only used  the QQQ csv to predict future gains. I chose to use inflation, interest, unemployment, retail sales, and industrial output in my data because these economic factors can reflect companys' performance and stock prices. I then created a future column that has the future gain of the next month. Following this I ran it through a function adding in all of the macro economic data to each row by year and month.

![image](https://github.com/evanbruno617/Macroeconomic_Stock_Analysis/blob/Evan/Images/function_code.png)

Following adding in all of this data I found the percent change of each of these columns and create a new column with it and then dropped the null values. After this I created a binary column that took the value from the future column and made it 0 if the value was negative or zero, and made it 1 if the value was greating than zero. 

Following this I split my data into training and testing sets with the testing being the "R/G" using all of the percent change of the economic factor data as well as gain column and the past column which has the percent change of the last month. I chose this data by trial and error seeing which columns produced the highest accuracy and using "feature_importances" function to see which columns had the highest influence. This model using economic data improves the accuracy signifcantly. Using a random state of 45 it predicts QQQ gains with a 65% accuracy but a model using only "Open", "Close", and "Volume" it has an accuracy of 50%. 

![image](https://github.com/evanbruno617/Macroeconomic_Stock_Analysis/blob/Evan/Images/predict_qqq.png)

Then with the other model I used the data from all of the stocks data which ueses the economic data to predict future gain. By using this model it show how simliar these stocks are and how they effect the QQQ index. It shows how accurate this model is to predict QQQ future gain with same the economic conditions and gain of each of these stocks. 

![image](https://github.com/evanbruno617/Macroeconomic_Stock_Analysis/blob/Evan/Images/simliarity.png)

I chose to use a RandomForestClassification model because since stocks have a lot of variability and volatility in their price action history I wanted to use this model to model stronger models off of weak ones in order to better understand how stock prices would be affected by these factors. The limitation of this model is being slower to predict data, however since the data being predicted is by month, this won't be an issue with predicting data in a timely manner. Benfit with using this model is that it performs classfication tasks with high accuracy and can also handle big data.




