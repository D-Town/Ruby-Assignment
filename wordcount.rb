def count_words(str)
  counts = {}
  str.downcase.scan(/\b[a-z]+/).each do |word| # Scan the string using word boundaries a to z
    if counts[word].nil? then
      counts[word] = 1
    else
      counts[word] += 1
    end
  end
  print(counts)
  print("\n")
end

count_words("Doo, bee, doo, bee, doo")
