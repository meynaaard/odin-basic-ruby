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
7. IF code is covered within lowercase
    shifted_value > lowercase end, subtract 26, otherwise return as is
   ELSIF code is covered within uppercase
    shifted_value > uppercase end, subtract 26, otherwise return as is
   ELSE
    return code
8. #map shifted_values back to a caesar cipher string using #chr then #join
=end

def caesar_cipher(string, key)
  lowercase = 65..90  #=> a to z
  uppercase = 97..122 #=> A to Z

  ascii_values = string.split("").map { |char| char.ord }

  shifted_values = ascii_values.map do |code|
    shifted_value = code + key
    if lowercase.cover?(code)
      shifted_value > lowercase.end ? shifted_value - 26 : shifted_value
    elsif uppercase.cover?(code)
      shifted_value > uppercase.end ? shifted_value - 26 : shifted_value
    else
      code
    end
  end

  shifted_values.map { |code| code.chr }.join
end

puts caesar_cipher("What a string!", 5)
