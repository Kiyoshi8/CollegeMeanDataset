# Transform 'College' from 'ISLR' to data.table. Make sure to keep the University identifier. We will use this new data.table called 'dtcollege' throughout this block of exercises.
dtcollege = data.table(College, keep.rownames = T); class(dtcollege)

# Get familiar with the dataset and its variables.
?College
head(dtcollege)
summary(dtcollege)

# Extract rows 50 to 70 as new data.table('mysubset').
mysubset = dtcollege [50:70]; mysubset

# What is the average enrollment number in this subset?
mean.enrollment = mysubset[,mean(Enroll)]; mean.enrollment

# Round the average enrollment to one digit.
round(mean.enrollment, digits = 1)

# Data Export Rdata to csv
# convert to CSV
convert(datasetincollege, "datasetincollege.csv")
import("datasetincollege.csv")
convert(fwf, "fwf.csv", in_opts = list(widths = c(1,2,3)))
import("fwf.csv") # check conversion

write.table()



