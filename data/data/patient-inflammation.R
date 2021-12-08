package(readr)
library(readr)
data01 <- read.csv("data/data/inflammation-01.csv", header=FALSE, sep=',')

class(data01)
dim(data01)

#data01[1:4, 1:10]
#data01[5:10, 1:10]

# first row, all of the columns
#patient_1 <- data01[1, ]
# max inflammation for patient 1
#max(patient_1)
# sum inflammation for patient 1
#sum(patient_1)

# max inflammation for patient 1
#max(data01[1, ])

# min inflammation for patient 2 on day 7
#min(data01[2,7])

#mean(as.numeric(data01[1, ]))


# obtain average inflammation of each patient
avg_patient_inflammation <- apply(data01, 1, mean)

# obtain average inflammation of each day
avg_day_inflammation <- apply(data01, 2, mean)

# plot
#plot(avg_day_inflammation)

# obtain minimum inflammation of each day
min_day_inflammation <- apply(data01, 2, min)
#plot
plot(min_day_inflammation)







