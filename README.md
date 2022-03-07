# Airline_On_Time_AZ_Market
In depth regression analysis, leveraging cloud technology and machine learning to predict flight arrival delay times. (Work In Progress)

## Summary of Results and Project:

Every month thousands of airline flights are cancelled, rescheduled, or delayed, leading to negative sentiment from consumers, potential losses from cancelled flights and in the worse cases a chain reaction of delayed flights across multiple airports. For a consumer this leads to a negative customer experience and for the airlines themselves, can cause a decrease in customer & brand loyalty.

This poses the question, what can airlines do to predict flight arrival delays? And from there how can airlines use statistical models and data analytics to mitigate potential loss from large delay times.

There are several common factors used to predict airline flight delays. ‘National Air Security Delay’, ‘Carrier Delay’, ‘Weather Delay’, ‘Late Aircraft Delay’ and ‘Security Delay’ tend to be the most prevalent and will be used throughout the following report to predict arrival delays. Alongside these five common factors several other continuous variables will be analyzed to find any potential alternatives to predict arrival delays.

At the end of this report I found that the best model takes in 'Dep Delay', 'Carrier Delay', 'Security Delay', 'NAS Delay' and 'Late Aircraft Delay' as input variables in order to predict 'Arrival Delays'. The model is able to predict with 99.58% accuracy, airline arrival delay times in 2021 based on a model trained with data raning from 2003 - 2020. The potential applications of the model are vast and can be used on an ad-hoc basis to predict arrival delays, given the neccessary input variables. In the report below a in depth discussion of the methods, data, model techniques and more will follow, ending with recommendations and next steps.

## Data:

In order to begin this project and create an accurate machine learning model, data was collected from over 33 years. However due to processing constraints and large changes in the airline industry, since 9/11/2002, we restrict our data from 2003 - 2020. Additionally due to a combination of budget and storage constraints, we further constrain the project to flights only originating in Arizona. Specifically the two largest ariports in the state, 'Tuscon Internation Airport' and 'Phoenix Skyharbor Airport'. From here we also narrow our search to flights with "Arrival Delay" greater than 0 minutes. Meaning that there was delay in the given flights arrival. Several factors that may be able to predict arrival delays include National Air Security Delay’, ‘Carrier Delay’, ‘Weather Delay’, ‘Late Aircraft Delay’ and ‘Security Delay’. Additionally, several other factors were tested for predicting arrival delays including ‘Distance’ and ‘Departure Delays’. All 7 of these factors have the potential to predict arrival delays so, various Exploratory Data Analysis techniques and correlation tests were used to find the optimal values to train the model. The data itself was acquired through IBM, who had an aggregated file of about 87 gigabytes, containing airline data from the BTS. In the next section I discuss the cloud tools utilized in the project, in order to harness the large amount of data given.

## Cloud Data Flow Diagram:
This diagram, documents the overall data flow of the project itself. Inclduing data storage, querying and more. Tools utilized throughout the project include google cloud services, google collab and google drive. Additionally tableau was used for data vizualizations and draw.io for process diagramming.

<img width="978" alt="Screen Shot 2022-03-02 at 9 25 22 AM" src="https://user-images.githubusercontent.com/88412646/156405792-b1236458-ad55-4af9-b7af-f6e0752457a4.png">

## Methods:
Various statical methods and machine learning techniques are used through this report to solve the proposed research question. Extensive exploratory data analysis was conducted prior to the use of machine learning modeling, which is covered in depth in the following section. Multivariable regression was the main algorithm used in this report and multiple models were iterated through to find the best fit model. Libraries used include pandas, seaborn and sklearn, for data cleaning, data visualization and model training. Variance inflation factors were used to test for multicollinearity between independent variables. Train / test splits were also used throughout the report, with the purpose of testing our model’s performance. Finally various metric scores were put together to test the performance of our models. Metrics used include root mean squared error, coefficient of determination and more. Interaction terms were also used in various models to tweak performance.

## Exploratory Data Analysis:
Before running any regression model’s extensive exploratory data analysis was conducted to gain knowledge on the shape, distribution, skew, and any possible correlations between variables. First each delay factor was plotted as a probability distribution, with each of the delay factors being highly skewed to the right. This can be interpreted as each of the delay factors having a relatively low amount of actual delay time in minutes, with the occasional flight that may be delayed for an extensive period. In terms of delay times, these results are in favor for the airlines, as we learn that most flights that are delayed are not for extensive or long time periods. There are even some flights which have negative departure delay / arrival delay time, which can be interpreted as a flight leaving early for whatever reason, or it could also be a data entry / data quality issue.

After learning about the distribution of airline delay times, scatterplots were used to find any relationship between the delay variables and arrival delay. The scatterplots used are very important as they give an initial idea of relationships between arrival delay and the delay variables. Out of all the variables “departure delay” had the strongest positive linear relationship with arrival delay. “Late Aircraft Delay” and “Carrier Delay” also shared a moderate positive linear relationship with arrival delay though both variables had high amounts of variation, the shorter “Late Aircraft Delay” or “Carrier Delay” was. The remaining delay variables had very little correlation with arrival delay and showed very little signs of any relationship. Finally, boxplots were used to gain an understanding of the number of outliers in each of the delay variables, with each of the delay variables having a high number of outliers. In particular “Late Aircraft Delay” and “Weather Delay” tended to have the highest number of outliers between the delay variables. Basic time series plot were also used, which show a high correlation between both arrival times and delay times for airlines.

### Charts:
<img width="724" alt="Screen Shot 2022-03-07 at 9 50 56 AM" src="https://user-images.githubusercontent.com/88412646/157089815-b4ffaf60-6cc7-4fc2-86fe-0ea27c0b5dbd.png">

<img width="594" alt="Screen Shot 2022-03-07 at 9 51 56 AM" src="https://user-images.githubusercontent.com/88412646/157089893-3ae2d2d0-b4ee-4f17-830d-1b380f04dce2.png">

<img width="550" alt="Screen Shot 2022-03-07 at 9 53 46 AM" src="https://user-images.githubusercontent.com/88412646/157090203-4c6562e7-6d30-4614-a8c6-75a25fe97bc3.png">

<img width="506" alt="Screen Shot 2022-03-07 at 9 54 00 AM" src="https://user-images.githubusercontent.com/88412646/157090234-e0a666a4-7ac3-47c2-909e-baf773b283da.png">

<img width="480" alt="Screen Shot 2022-03-07 at 9 54 47 AM" src="https://user-images.githubusercontent.com/88412646/157090360-12685731-d41e-45e0-89e4-c92b268ab234.png">

<img width="497" alt="Screen Shot 2022-03-07 at 9 55 02 AM" src="https://user-images.githubusercontent.com/88412646/157090403-3cd20ddf-5a58-4b05-8755-e545b4c2e86e.png">

<img width="473" alt="Screen Shot 2022-03-07 at 9 55 20 AM" src="https://user-images.githubusercontent.com/88412646/157090451-c9cdfedf-9a44-44e0-aa85-fd9526d8a9ed.png">

## Model Analysis (In Progress)

After conducting the Exploratory data analysis and referring to the results from our previous simple regression model, we have a fairly good idea of what variables to use for the creation of a predictive model. In our case there are around 9 variables which we will examine in the creation of our machine learning model. The variables are “Departure Delay”, “Carrier Delay”, “Weather Delay”, “NAS Delay”, “Security Delay”, “Late Aircraft Delay”, “Distance”, “Taxi Out” and “Taxi In”. Each of these variables was selected based off previous research into the subject and through the results of our EDA conducted earlier in the report. In my previous study on the topic, I was able to find a ‘best fit’ regression model for arrival delay times that can be written as:  

y (Arrival Delay)= -8.86+0.9998 (Depature Delay)

Using this knowledge, I included departure delay in each of the models and made various tweaks through each iteration to create an effective predictive model. With the variables selected I ran a VIF test, to check for large amounts of multicollinearity between our x variables. The results of the test can be summarized in the table below, however there were large amounts of collinearity between Departure Delay, Carrier Delay and Late Aircraft Delay, which led to me creating interaction between these variables in some of the model iterations. Besides that, each of the variables had low collinearity, allowing me to include them within the model, though this is less important in the context of our problem, as we are more concerned with predictive power. From here we iterate through about 5 different models, with the goal of reaching a regression score > 0.95. 

