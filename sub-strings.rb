dictionary = ["below", "below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
    dictionary.to_h{|word| [word, string.scan(word).count]}
end
