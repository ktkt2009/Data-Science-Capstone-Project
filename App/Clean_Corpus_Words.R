Clean_words <- function(text_blob) {
  # swap all sentence ends with code 'ootoo'
  text_blob <- gsub(pattern=';|\\.|!|\\?', x=text_blob, replacement='oto')
  
  # remove all non-alpha text (numbers etc)
  text_blob <- gsub(pattern="[^[:alpha:]]", x=text_blob, replacement = ' ')
  
  # force all characters to lower case
  text_blob <- tolower(text_blob)
  
  # remove any small words {size} or {min,max}
  text_blob <- gsub(pattern="\\W*\\b\\w{1,2}\\b", x=text_blob, replacement=' ')
  
  # remove contiguous spaces
  text_blob <- gsub(pattern="\\s+", x=text_blob, replacement=' ')
  
  # split sentences by split code
  words_vector <- unlist(strsplit(x=text_blob, split='oto',fixed = TRUE))
  return (words_vector)
}


head(corpus_words)

words<- Clean_words(paste(corpus_words, collapse=" "))

words
