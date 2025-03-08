### R code for randomising word lists with repetitions ###

# Set seed for reproducibility
set.seed(123)

# Define the list of target words
words <- c("word1", "word2", "word3", "word4", "word5",
           "word6", "word7", "word8", "word9", "word10",
           "word11", "word12", "word13", "word14", "word15",
           "word16", "word17", "word18", "word19", "word20")  

# Set the number of repetitions
repetitions <- 10

# Create a repeated word list
word_list <- rep(words, each = repetitions)

# Shuffle the list randomly
shuffled_words <- sample(word_list, length(word_list))

# Define the directory path where you want to save the file.
# Use double backslashes or single forward slashes. 

output_dir <- "C:\\Users\\OneDrive\\Desktop\\Demo\\"  

# Define the full file path
file_path <- file.path(output_dir, "shuffled_word_list.csv")

# Save to a CSV file with "Tokens" as the column name
write.csv(data.frame(Tokens = shuffled_words), file_path, row.names = FALSE)


# End of code
