dictionary = ["below", "below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  dictionary.map{|word| [word, string.scan(word).count]}.to_h
end
