def dictionary
  dictionary = {
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

def word_substituter(tweet)
  tweet_array = tweet.split
  dictionary_keys = dictionary.keys

  tweet_array.each do |word|
    dictionary_keys.each do |longword|
      if word == longword || word.downcase == longword
        word.replace dictionary[longword]
      end
    end
  end

  tweet = tweet_array.join(" ")
  return tweet
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    tweet_array = tweet.split
    dictionary_keys = dictionary.keys

    tweet_array.each do |word|
      dictionary_keys.each do |longword|
        if word == longword || word.downcase == longword
          word.replace dictionary[longword]
        end
      end
    end
    tweet = tweet_array.join(" ")
    puts tweet
  end
end

def selective_tweet_shortener(tweet)
  tweet_array = tweet.split
  dictionary_keys = dictionary.keys

  if tweet.length > 140
    tweet_array.each do |word|
      dictionary_keys.each do |longword|
        if word == longword || word.downcase == longword
          word.replace dictionary[longword]
        end
      end
    end
    tweet = tweet_array.join(" ")
    return tweet
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  tweet_array = tweet.split
  dictionary_keys = dictionary.keys

  if tweet.length > 140
    tweet_array.each do |word|
      dictionary_keys.each do |longword|
        if word == longword || word.downcase == longword
          word.replace dictionary[longword]
        end
      end
    end
    short_tweet = tweet_array.join(" ")

    if short_tweet.length > 140
      tweet = short_tweet.slice(0..136)
      tweet << "..."
      return tweet
    else
      tweet = short_tweet
      return tweet
    end

  else
    return tweet
  end
end

tweet = "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"
shortened_tweet_truncator(tweet)
