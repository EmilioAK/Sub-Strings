def substring_from_first (array)
    index = 0
    result = []
    while index < array.length() do
        substring_array = array[0..index]
        substring = substring_array.join("")
        
        result.append(substring)
        index += 1
    end
    return result
end

def all_substrings (word)
    array = word.split("")
    index = 0
    result = []
    while index < array.length() do
        substring_array = substring_from_first(array[index..-1])
        result.concat(substring_array)
        index += 1
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