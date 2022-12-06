#package(readr)
library(readr)
data01 <- read.csv("data/data/inflammation-01.csv", header = FALSE, sep = ',')

class(data01)
dim(data01)
data01[30, 20]
# first row, all of the columns
patient_1 <- data01[1, ]
# max inflammation for patient 1
sum(patient_1)

# max inflammation for patient 1
min(data01[2, ])

max(data01[1, ])
mean(data01 [1, ])
mean(as.numeric(data01[1, ]))

#mean of all of 	the rows -> the average inflammation of each patient
avg_patient_inflammation <- apply(data01, 1, mean)

#mean of all of the columns (MARGIN = 2) of the data frame ->average inflammation of each day
avg_day_inflammation <- apply(data01, 2, mean)

#avg_day_inflammation plot
plot(avg_day_inflammation)

#maximum and minimum inflammation per day
max_day_inflammation <- apply(data01, 2, max)
plot(max_day_inflammation)

#min day inflammation
min_day_inflammation <- apply(data01, 2, min)
plot(min_day_inflammation)

