# Sub Strings

A Ruby method that finds and counts substring occurrences within a given text using a provided dictionary.

## Description

The `substrings` method takes a word or sentence as the first argument and an array of valid substrings (dictionary) as the second argument. It returns a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

## Features

- ✅ Case-insensitive matching
- ✅ Handles single words and multiple words/sentences
- ✅ Counts overlapping substrings
- ✅ Works with punctuation and special characters
- ✅ Returns results as a hash with counts

## Usage

### Basic Example
```ruby
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)
# => {"below"=>1, "low"=>1}
```

### Multiple Words Example
```ruby
substrings("Howdy partner, sit down! How's it going?", dictionary)
# => {"down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1, "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}
```

### Additional Examples
```ruby
substrings("Going down below", dictionary)
# => {"go"=>1, "going"=>1, "own"=>1, "down"=>1, "below"=>1, "low"=>1}

substrings("I'm going", dictionary)
# => {"i"=>2, "go"=>1, "going"=>1}
```

## How It Works

The method works by:

1. **Converting to lowercase**: Both input text and dictionary words are converted to lowercase for case-insensitive comparison
2. **Scanning for matches**: Uses Ruby's `.scan()` method to find all occurrences of each dictionary word in the text
3. **Counting occurrences**: Counts the number of matches found for each dictionary word
4. **Building result hash**: Only includes words that were found at least once in the final hash

### Algorithm Breakdown
```ruby
def substrings(text, dictionary)
  text_lower = text.downcase              # Step 1: Case conversion
  result = {}                             # Step 2: Initialize result hash
  
  dictionary.each do |word|               # Step 3: Check each dictionary word
    word_lower = word.downcase
    matches = text_lower.scan(word_lower).length  # Step 4: Count matches
    result[word_lower] = matches if matches > 0   # Step 5: Store if found
  end
  
  result
end
```

## Installation & Running

### Method 1: Local Ruby Installation
1. Make sure Ruby is installed on your system
2. Save the code in a file named `substrings.rb`
3. Run the script:
   ```bash
   ruby substrings.rb
   ```

### Method 2: Interactive Ruby (IRB)
1. Open terminal and type `irb`
2. Copy and paste the method definition
3. Define your dictionary array
4. Test with: `substrings("your text", dictionary)`

### Method 3: Online Editor
1. Go to [replit.com](https://replit.com)
2. Create a new Ruby repl
3. Copy and paste the code
4. Click "Run"

## File Structure

```
SUB STRINGS/
├── substring.rb       # Main implementation
└── README.md         # This file
```

## Key Ruby Concepts Demonstrated

This project showcases several important Ruby concepts:

- **String Methods**: `.downcase`, `.scan()`
- **Array Methods**: `.each`, `.length`
- **Hash Operations**: Creating and populating hashes
- **Conditional Logic**: `if` statements
- **Case-insensitive Text Processing**
- **Pattern Matching**: Finding substrings within larger strings

## Understanding the Results

### Why "i" appears 3 times in the complex example:
In `"Howdy partner, sit down! How's it going?"`:
- "s**i**t" contains "i"
- "go**i**ng" contains "i" 
- "**i**t" contains "i"
- Total: 3 occurrences

### Why "how" appears 2 times:
- "**How**dy" contains "how"
- "**How**'s" contains "how"
- Total: 2 occurrences

## Edge Cases Handled

- **Empty strings**: Returns empty hash
- **No matches**: Returns empty hash
- **Punctuation**: Ignored during matching
- **Mixed case**: Properly handled with case conversion
- **Overlapping matches**: All occurrences are counted

## Educational Purpose

This project is part of a Ruby programming course and demonstrates:
- String manipulation and processing
- Working with arrays and hashes together
- Implementing search algorithms
- Case-insensitive text matching
- Building data structures from analysis results

## Potential Enhancements

Ideas for extending this project:
- Add minimum/maximum word length filters
- Support for regular expressions in dictionary
- Performance optimization for large texts
- Word boundary detection (avoid partial matches)
- Export results to different formats (JSON, CSV)

## Contributing

Feel free to fork this project and submit improvements!

## License
This project is for educational purposes.
This project is for educational purposes.
