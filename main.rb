def caesar_cipher(input_string, shift_factor)
    result = ""
  
    input_string.each_char do |char|
      if char.match(/[a-zA-Z]/)
        shift = shift_factor % 26  # Ensure the shift is within the alphabet range
        ascii_offset = (char.downcase == char) ? 'a'.ord : 'A'.ord
        encrypted_char = ((char.ord - ascii_offset + shift) % 26 + ascii_offset).chr
        result << encrypted_char
      else
        result << char
      end
    end
  
    return result
  end
  
  # Example usage:
  puts caesar_cipher("Hello, World!", 3)
  