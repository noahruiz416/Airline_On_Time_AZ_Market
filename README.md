# Airline_On_Time_AZ_Market
In depth regression analysis, leveraging cloud technology and machine learning to predict flight arrival delay times. (Work In Progress)

## Summary:

Every month thousands of airline flights are cancelled, rescheduled, or delayed, leading to negative sentiment from consumers, potential losses from cancelled flights and in the worse cases a chain reaction of delayed flights across multiple airports. For a consumer this leads to a negative customer experience and for the airlines themselves, can cause a decrease in customer & brand loyalty.

This poses the question, what can airlines do to predict flight arrival delays? And from there how can airlines use statistical models and data analytics to mitigate potential loss from large delay times.

There are several common factors used to predict airline flight delays. ‘National Air Security Delay’, ‘Carrier Delay’, ‘Weather Delay’, ‘Late Aircraft Delay’ and ‘Security Delay’ tend to be the most prevalent and will be used throughout the following report to predict arrival delays. Alongside these five common factors several other continuous variables will be analyzed to find any potential alternatives to predict arrival delays.

In this project, I will develop a machine learning model to accurately predict "Airline Arrival Delays". The potential applications of the model are vast and can be used on an ad-hoc basis to predict arrival delays, given a departure delay. In the report below a in depth discussion of the methods, data, regression techniques and more will follow, ending with recommendations and next steps.

## Data:

In order to begin this project and create an accurate machine learning model, data was collected from over 33 years. However due to processing constraints and large changes in the airline industry, since 9/11/2002, we restrict our data from 2003 - 2020. Additionally due to a combination of budget and storage constraints, we further constrain the project to flights only originating in Arizona. Specifically the two largest ariports in the state, 'Tuscon Internation Airport' and 'Phoenix Skyharbor Airport'. From here we also narrow our search to flights with "Arrival Delay" greater than 0 minutes. Meaning that there was delay in the given flights arrival. Several factors that may be able to predict arrival delays include National Air Security Delay’, ‘Carrier Delay’, ‘Weather Delay’, ‘Late Aircraft Delay’ and ‘Security Delay’. Additionally, several other factors were tested for predicting arrival delays including ‘Distance’ and ‘Departure Delays’. All 7 of these factors have the potential to predict arrival delays so, various Exploratory Data Analysis techniques and correlation tests were used to find the optimal values to train the model. The data itself was acquired through IBM, who had an aggregated file of about 87 gigabytes, containing airline data from the BTS. In the next section I discuss the cloud tools utilized in the project, in order to harness the large amount of data given.

## Cloud Data Flow Diagram:
This diagram, documents the overall data flow of the project itself. Inclduing data storage, querying and more. Tools utilized throughout the project include google cloud services, google collab and google drive. Additionally tableau was used for data vizualizations and draw.io for process diagramming.

<img width="978" alt="Screen Shot 2022-03-02 at 9 25 22 AM" src="https://user-images.githubusercontent.com/88412646/156405792-b1236458-ad55-4af9-b7af-f6e0752457a4.png">

## Methods:

## Exploratory Data Analysis:
