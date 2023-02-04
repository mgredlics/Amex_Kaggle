library(arrow)
library(dplyr)
library(caret)


df <- read_parquet("~/Documents/Amex_Kaggle/train.parquet",as_tibble = TRUE)


## 20% of the sample size
smp_size <- floor(0.80 * nrow(df))

## set the seed to make your partition reproducible
set.seed(42)
partition <- sample(seq_len(nrow(df)), size = smp_size)

Train <- df[partition, ]
Test <- df[-partition, ]

sample <- Train[1:20,]

#This is the end of my code