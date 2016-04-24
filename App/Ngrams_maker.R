# Making Ngrams
library(ngram)
test_sentence <- "this is a big sentence"
ng_2 <- ngram(test_sentence , n=2)
print(ng_2 , full = TRUE )

Trim <- function( x ) {
  
  gsub("(^[[:space:]]+|[[:space:]]+$)", "", x)
}


Get_Ngrams <- function(word_splits, ngram_size=2) {
  ngrams <- c()
  for (words in word_splits) {
    words <- Trim(words)
    if ((nchar(words) > 0) && (sapply(gregexpr("\\W+", words), length) >= ngram_size)) {
      ngs <- ngram(words , n=ngram_size)
      ngrams <- c(ngrams, get.ngrams(ngs))
    }
  }
  return (ngrams)
}

n2 <- Get_Ngrams(words, ngram_size=2)
n3 <- Get_Ngrams(words, ngram_size=3)
n4 <- Get_Ngrams(words, ngram_size=4)


# consolidate all n-gram vectors into one
n_all <- c(n2, n3, n4)
head(n_all)
# save the n-grams in the same folder as your shiny code
write.csv(n_all, 'final_ngrams.csv', row.names=FALSE)
