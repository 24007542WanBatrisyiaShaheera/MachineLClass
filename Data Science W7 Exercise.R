# Week 7 lecture exercise 26/06/2026

# create a dataframe called 'students'
names =c("Aisha","Bryan","Chloe","Daniel","Emily")
gender = c("Female","Male","Female","Male","Female")
age = c(22,23,21,24,22)
test_score = c(85,78,92,65,88)
attendance = c(90,85,95,70,88)
students = data.frame(names,gender,age,test_score,attendance)
View(students)

students['test_score']
df$test_score

#first 3 rows of data frame
students[1:3,]

# students older than 22 years old
students[students$age>22,]

# female students with test score greater than 80
students[students$test_score>80,]

# adding new data into dataframe
studentsNew <- rbind(students, data.frame(names= "Lina",
                                          gender = "Female",
                                          age = 20,
                                          test_score = 95,
                                          attendance = 92))
View(studentsNew)

# missing values

students_na <- data.frame(names = c("Aisha", "Bryan", "Chloe", "Daniel", "Emily"),
                          gender = c("Female", "Male", "Female", "Male", "Female"),
                          age = c(22, NA, 21, 24, 22),
                          test_score = c(85, 78, NA, 65, 88),
                          attendance = c(90, 85, 95, NA, 88))

# check for missing values na in data frame
is.na(students_na)

# replace missing values in age with mean of age
students_na$age[is.na(students_na$age)] <- mean(students_na$age, na.rm=TRUE)
students_na

# replace missing values in test score with median test score
students_na$test_score[is.na(students_na$test_score)] <- median(students_na$test_score, na.rm=TRUE)
students_na

# replace missing values in attendance with 0
students_na$attendance[is.na(students_na$attendance)] <- 0
students_na
