def substring_from_first (array)
    result = []

    array.each_with_index do |x, index|
        substring_array = array[0..index]
        substring = substring_array.join("")
        result.append(substring)
    end
    return result
end

def all_substrings (word)
    array = word.split("")
    result = []
    
    array.each_with_index do |x, index|
        substring_array = substring_from_first(array[index..-1])
        result.concat(substring_array)
    end
    return result
end

def is_substring (string, substring)
    substrings = all_substrings(string)
    return substrings.include? substring
end

def substring_occurances (string, substring)
    return all_substrings(string).count(substring)
end

def substrings (string, substring_array)
    result = {}
    string = string.downcase
    for word in substring_array
        word = word.downcase
        if is_substring(string, word)
            result[word] = substring_occurances(string, word)
        end
    end
    return result
end