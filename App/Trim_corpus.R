# load data
load("blogs.RData")
load("news.RData")
load("twitter.RData")

# sample data (100,000 of each)
s_blogs   <- sample(blogs, 4000)
s_news    <- sample(news, 4000)
s_twitter <- sample(twitter, 4000)

# save samples
save(s_blogs, s_news, s_twitter, file= "final_corpus.RData")
