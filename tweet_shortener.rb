# Write your code here.

def dictionary 
  words_to_be_substituted = { 
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet_one)
  final_tweet = []
  dictionary_keys = dictionary.keys
  tweets_array = tweet_one.split(" ")
  
  tweets_array.each do |word|
    if dictionary_keys.include?(word.downcase)
      final_tweet << dictionary[word.downcase]
    else 
      final_tweet << word
    end
  end
  final_tweet.join(" ")  
  
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.map do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
  
end

def shortened_tweet_truncator



