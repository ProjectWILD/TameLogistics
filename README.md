# TameLogistics
The goal of this project is to streamline the workflow of an administrator collecting data and documents through automation of Google Forms and Google Drive to create summary documents and file organization. 

#### Motivating Problem:
Currently, I am one of the two Program Directors for Project WILD, a backpacking program at Duke University. A lot of the time spent as a director goes towards brute force logistics including but not limited to collecting individual's documents (i.e. driver license and medical insurance) and storing in appropriate Google Drive folders and tracking respondents to a multitude of surveys. Through this project, I aim to automate much of these tasks to leave more time for actual progress for the position. This project will not be made to be solely made for Project WILD purposes, I aim to make a library which will allow other administrators to streamline their workflow as well. The name "TameLogistics" comes about from taming project wild. 

#### Problems to Tackle
* Creating a system which tracks respondents for Google Forms/other submissions and aggregates this into a spreadsheet. Note: this is intended for situations in which respondents will have to answer a multitude of items
* Organization of Google Forms into subfolders. Currently, 
* Reminder emails sent based on incomplete respondents upon an administrators request. 

#### Methods to Implement
* Will be utilizing open source Google Drive CLI in the form of bash scripts to automate Google Drive organization
* Will be leveraging the Google App Scripts framework to deliver Google Form automation
* Will explore other add-ons for Google forms to improve automation including add-ons that recreate new Google Forms from old copies
* Will be using some Gmail API to send reminder emails (possibly gmailR) as I have previous experience. 
