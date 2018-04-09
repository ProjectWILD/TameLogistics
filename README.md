# TameLogistics
The goal of this project is to streamline the workflow of an administrator collecting data and documents through automation of Google Forms and Google Drive to create summary documents and file organization. 

#### Motivating Problem:
Currently, I am one of the two Program Directors for Project WILD, a backpacking program at Duke University. A lot of the time spent as a director goes towards brute force logistics including but not limited to collecting individual's documents (i.e. driver license and medical insurance) and storing in appropriate Google Drive folders and tracking respondents to a multitude of surveys. Through this project, I aim to automate much of these tasks to leave more time for actual progress for the position. This project will not be made to be solely made for Project WILD purposes, I aim to make a library which will allow other administrators to streamline their workflow as well. The name "TameLogistics" comes about from taming project wild. 

#### Problems to Tackle
* Creating a system which tracks respondents for Google Forms/other submissions and aggregates this into a spreadsheet. Note: this is intended for situations in which respondents will have to answer a multitude of items
* Download of files with organization of files into Google Drive subfolders. Currently, I am downloading files from email attachments, renaming them, and then hand dragging them into folders in Google Drive which I have to name. An ideal solution would be creating a flexible form interface where files are uploaded. Then from an admin perspective, they could simply run a script which downloads, renames, places into a folder, and uploads into Google Drive. 
* Reminder emails sent based on incomplete respondents upon an administrators request. 
* Optimizatio of PWILD schedules

#### Methods to Implement
* Will be leveraging the Google App Scripts framework to deliver Google Form automation and google drive orgaization
* Will explore other add-ons for Google forms to improve automation including add-ons that recreate new Google Forms from old copies
* Will be using some Gmail API to send reminder emails (possibly gmailR)
* Will be using open source libraries such as the R package lpsolve and jsprit to optimize scheduling / assignment problems that can be generalized to popular computer sceice problems

#### Current Work
1. DiscretePlacementFunction.R: R function which leverages a Linear/Integer Programming package to easily answer the assignment problem. Takes in preferences for n people on n placements and then returns a nice mapping from item to placement with the maximal utility reached from inputted prefereces. 
2. [In progress] DriverOptimization: Project which will create optimal driving schedule based on given inputs. 
