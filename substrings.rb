def substrings(input, dictionary)
    input.downcase!
    result = Hash.new(0)
  
    dictionary.each do |substring|
      occurrences = input.scan(substring.downcase).length
      result[substring] += occurrences if occurrences.positive?
    end
  
    return result
  end
  
  # Example usage with a single word:
  word = "hello"
  dictionary = ["he", "lo", "hello", "world"]
  puts substrings(word, dictionary)
  
  # Example usage with multiple words:
  sentence = "Hello, world! How are you doing today?"
  puts substrings(sentence, dictionary)
  