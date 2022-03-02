# Airline_On_Time_AZ_Market
In depth regression analysis, leveraging cloud technology and machine learning to predict flight arrival delay times.

## Summary:

Every month thousands of airline flights are cancelled, rescheduled, or delayed, leading to negative sentiment from consumers, potential losses from cancelled flights and in the worse cases a chain reaction of delayed flights across multiple airports. For a consumer this leads to a negative customer experience and for the airlines themselves, can cause a decrease in customer & brand loyalty.

This poses the question, what can airlines do to predict flight arrival delays? And from there how can airlines use statistical models and data analytics to mitigate potential loss from large delay times.

There are several common factors used to predict airline flight delays. ‘National Air Security Delay’, ‘Carrier Delay’, ‘Weather Delay’, ‘Late Aircraft Delay’ and ‘Security Delay’ tend to be the most prevalent and will be used throughout the following report to predict arrival delays. Alongside these five common factors several other continuous variables will be analyzed to find any potential alternatives to predict arrival delays.

Through the help of exploratory data analysis and regression modeling I was able to find that the most accurate determinant of airline arrival delays is the airline departure delay time. The potential applications of the model are vast and can be used on an ad-hoc basis to predict arrival delays, given a departure delay. In the report below a in depth discussion of the methods, data, regression techniques and more will follow, ending with recommendations and next steps.

## Data:

In order to begin this project and create an accurate machine learning model, data was collected from over 33 years. However due to processing constraints and large changes in the airline industry, since 9/11/2002, we restrict our data from 2003 - 2020. Additionally due to a combination of budget and storage constraints, we further constrain the project to flights only originating in Arizona. Specifically the two largest ariports in the state, 'Tuscon Internation Airport' and 'Phoenix Skyharbor Airport'. From here we also narrow our search to flights with "Arrival Delay" greater than 0 minutes. Meaning that there was delay in the given flights arrival.

## Methods:

## Exploratory Data Analysis:


## Cloud Data Flow Diagram:
This diagram, documents the overall data flow of the project itself. Inclduing data storage, querying and more. Tools utilized throughout the project include google cloud services, google collab and google drive. Additionally tableau was used for data vizualizations and draw.io for process diagramming.

<img width="978" alt="Screen Shot 2022-03-02 at 9 25 22 AM" src="https://user-images.githubusercontent.com/88412646/156405792-b1236458-ad55-4af9-b7af-f6e0752457a4.png">
