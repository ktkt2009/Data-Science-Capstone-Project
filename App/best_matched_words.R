# notice the trailing space at end to avoid picking last word
word <- 'Go on a romantic date '

matches <- c()
for (words in n_all) {
  # find exact match with double backslash and escape
  if (grepl(paste0('\\<',word), words)) {
    print(words)
    matches <- c(matches, words)
  }
}

# find highest probability word
precision_match <- c()
for (a_match in matches) {
  # how many spaces in from of search word
  precision_match <- c(precision_match,nchar(strsplit(x = a_match, split = word)[[1]][[1]]))
}

# use highest number and a random of highest for multiples
best_matched_words <- sample(matches[precision_match == max(precision_match)],size = 1)

print(best_matched_words)

# split the best matching sentence by the search word
best_match <- strsplit(x = best_matched_words, split = word)[[1]]

# split second part by spaces and pick first word
best_match <-  strsplit(x = best_match[[2]], split = " ")[[1]]
best_match <- best_match[[1]]
print(best_match)