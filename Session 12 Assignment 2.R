library(tidyverse)

yeast <- read.table('https://archive.ics.uci.edu/ml/machine-learning-databases/yeast/yeast.data', stringsAsFactors = FALSE)

l <- readLines('https://archive.ics.uci.edu/ml/machine-learning-databases/yeast/yeast.names')
l <- l[(grep('^7', l) + 1):(grep('^8', l) - 1)]
l <- l[grep('\\d\\..*:', l)]

names(yeast) <- make.names(c(sub('.*\\d\\.\\s+(.*):.*', '\\1', l), 'class'))

## a. What are the assumptions of ANOVA, test it out?

## To use the ANOVA test we made the following assumptions:

# 1. Each group sample is drawn from a normally distributed population
# 2. All populations have a common variance
# 3. All samples are drawn independently of each other
# 4. Within each sample, the observations are sampled randomly and independently of each other
# 5. Factor effects are additive

# b. Why ANOVA test? Is there any other way to answer the above question?