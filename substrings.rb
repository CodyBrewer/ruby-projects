dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  # create empty matches hash
  matches = {}
  # loop over dictionary checking each word 
  dictionary.each { | word | 
    # count the number of times the word shows up in the string
    count = string.downcase.scan(word).count
    # add entry into matches hash with key set to the word unless count is 0
    matches[word] = count unless count == 0
  }
  # return matches
  matches
end

puts substrings("below", dictionary)