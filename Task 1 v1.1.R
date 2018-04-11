getwd()
setwd("~/Desktop")

##Brought the datasets into R using the read.table command (TADZIO)
##Created new variables for each one to make manipulation easier 

y_train1 <- read.table(file = "/Users/Tadzio/Desktop/y_train.txt")
x_train1 <- read.table(file = "/Users/Tadzio/Desktop/x_train.txt")
y_test1 <- read.table(file = "/Users/Tadzio/Desktop/y_test.txt")
x_test1 <- read.table(file = "/Users/Tadzio/Desktop/x_test.txt")

##Used the cbind command to merge the datasets into their respective training and testing variables 
##By doing so I reduced the # of datasets from 4 to 2.

training_data <- cbind(y_train1,x_train1)
testing_data <- cbind(y_test1, x_test1)

##To fully merge the two into one, I used the rbind command to combine the rows.
##We now have one merged dataset
merged_data <- rbind(training_data, testing_data)

##In order to extract just the mean and standard dev I referenced the feautures.txt file to figure out 
##which column in the dataset refered to the either mean or standard dev

##I then created a vector using the c() command to extract only the mean and standard dev measurements.
##Those were then placed under the title of merged_data2 (TADZIO)

merged_data2 <- merged_data[c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,240:241,253:254,266,271,345:350,424:429,503:504,516:517,529:530,542:543 )]


