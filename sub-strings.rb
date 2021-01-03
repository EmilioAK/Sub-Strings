dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings_of_word (word, dictionary)
    dictionary.reject {|dict_word| word.downcase.scan(dict_word) == []}
end

def substrings (string, dictionary)
    words = string.scan(/[\w']+/)
    words.each_with_object({}) do |word, hash|
        substrings = substrings_of_word(word, dictionary)
        substrings.each {|substring| hash[substring] ? hash[substring] += 1 : hash[substring] = 1}
    end
end
