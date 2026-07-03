library(dplyr)
student_data <- read.csv("C:/Users/admin/Downloads/student_data.csv")

# Show the details of students whose final_exam_mark is greater than 80%. 
high_score <- student_data %>%
  filter(final_exam_mark > 80)
high_score

# Arrange the dataset in ascending order based on course_work_mark
arranged_data <- student_data %>%
  arrange(coursework_mark)
arranged_data

# Display only the student name and final_exam_mark attributes from the dataset
selected_data <- student_data %>%
  select(student_name, final_exam_mark)
selected_data

# Specify the number of rows and columns in the dataset. 
nrow(student_data)
ncol(student_data)

# Explain how to obtain the details of the given dataset using R.
# Show the dataset details based on the R query you execute.
str(student_data)
summary(student_data)
glimpse(student_data)

# How can you identify and detect outliers in the given dataset? Explain and demonstrate using R.
# calculate quartiles
Q1 <- quantile(student_data$final_exam_mark, 0.25)
Q3 <- quantile(student_data$final_exam_mark, 0.75)

# calculate IQR
IQR_value <- IQR(student_data$final_exam_mark)

# calculate boundaries
lower_limit <- Q1 - 1.5 * IQR_value
upper_limit <- Q3 + 1.5 * IQR_value

# display values
Q1
Q3
IQR_value
lower_limit
upper_limit

# detect outliers
outliers <- student_data[
  student_data$final_exam_mark < lower_limit |
    student_data$final_exam_mark > upper_limit,
]
outliers
