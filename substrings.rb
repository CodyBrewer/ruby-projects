dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  # create empty matches hash
  matches = {}
  # loop over dictionary checking each word 
  dictionary.each do | word | 
    # count the number of times the word shows up in the string
    count = string.downcase.scan(word).count
    # add entry into matches hash with key set to the word unless count is 0
    matches[word] = count unless count == 0
  end
  # return matches
  p matches
end

substrings("below", dictionary)