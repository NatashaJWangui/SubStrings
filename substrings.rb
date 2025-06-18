def substrings(text, dictionary)
  # Convert the input text to lowercase for case-insensitive matching
  text_lower = text.downcase
  
  # Initialize an empty hash to store results
  result = {}
  
  # Iterate through each word in the dictionary
  dictionary.each do |word|
    # Convert dictionary word to lowercase for comparison
    word_lower = word.downcase
    
    # Count how many times this word appears in the text
    # We use scan to find all occurrences (including overlapping ones)
    matches = text_lower.scan(word_lower).length
    
    # Only add to result hash if the word was found at least once
    if matches > 0
      result[word_lower] = matches
    end
  end
  
  result
end

# Test with the provided examples
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts "Example 1:"
result1 = substrings("below", dictionary)
puts result1
# Expected: { "below" => 1, "low" => 1 }

puts "\nExample 2:"
result2 = substrings("Howdy partner, sit down! How's it going?", dictionary)
puts result2
# Expected: { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

# Additional test cases
puts "\nAdditional Tests:"
puts substrings("Going down below", dictionary)
puts substrings("I'm going", dictionary)
puts substrings("", dictionary)  # Empty string test