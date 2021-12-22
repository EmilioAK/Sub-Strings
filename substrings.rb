def substrings(str, dict)
  dict.to_h { |word| [word, str.scan(word).count] }.reject { |_, v| v.zero? }
end
