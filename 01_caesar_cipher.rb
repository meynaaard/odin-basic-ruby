require "pry-byebug"

=begin
My Algorithm:
1. Create a method called #caesar_cipher that accepts two arguments: `string`
   and `key`
2. Add a variable `lowercase` that includes range of lowercase letters in ASCII
3. Add a variable `uppercase` that includes range of uppercase letters in ASCII
4. Add a variable `ascii_values` that splits the `string` argument then #map
   into its character ASCII
5. Create a new variable called `shifted_values` that #map over `ascii_values`
   with iterator `code`
6. Add a variable `shifted_value` that adds `key` to `code`
7. Create a method called #wrap_around that accepts two arguments: `first_value`
   and `shifted_value` return ((shifted_value - first_value) % 26) + first_value
8. IF code is covered within lowercase
    call #wrap_around with arguments lowercase.begin, shifted_value
   ELSIF code is covered within uppercase
    call #wrap_around with arguments uppercase.begin, shifted_value
   ELSE
    return code
9. #map shifted_values to its caesar cipher string using #chr then #join
=end

def caesar_cipher(string, key)
  lowercase = 65..90  #=> a to z
  uppercase = 97..122 #=> A to Z

  ascii_values = string.split("").map { |char| char.ord }

  shifted_values = ascii_values.map do |code|
    shifted_value = code + key
    if lowercase.cover?(code)
      wrap_around(lowercase.begin, shifted_value)
    elsif uppercase.cover?(code)
      wrap_around(uppercase.begin, shifted_value)
    else
      code
    end
  end

  shifted_values.map { |code| code.chr }.join
end

def wrap_around(first_value, shifted_value)
  ((shifted_value - first_value) % 26) + first_value
end

puts caesar_cipher("What a string!", 5)
