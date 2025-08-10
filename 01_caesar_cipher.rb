require "pry-byebug"

=begin
My Algorithm:
1. Create a method called #caesar_cipher that accepts two arguments: `string`
   and `key`
2. Add a variable `lowercase_range` that includes range of lowercase letters
3. Add a variable `uppercase_range` that includes range of uppercase letters
4. Add a variable `split_string` that splits the `string` argument
5. Create a new variable called shifted_values that #map over `split_string`
   with iterator `char`
6. Add a variable `shifted_value` that adds `key` to the `char` ordinal value
7. IF `char` is covered within lowercase_range
    shifted_value > 122('z'), subtract 26, otherwise return as is
   ELSIF `char` is covered within uppercase_range
    shifted_value > 90('Z'), subtract 26, otherwise return as is
   ELSE
    shifted_value is `char` ordinal value only (spaced, punctuations)
8. Convert `shifted_values` back to a caesar cipher string using #chr and #join
=end

def caesar_cipher(string, key)
  lowercase_range = "a".."z"
  uppercase_range = "A".."Z"

  split_string = string.split("")

  shifted_values = split_string.map do |char|
    shifted_value = char.ord + key

    if lowercase_range.cover?(char)
      shifted_value > 122 ? shifted_value - 26 : shifted_value
    elsif uppercase_range.cover?(char)
      shifted_value > 90 ? shifted_value - 26 : shifted_value
    else
      shifted_value = char.ord
    end
  end

  shifted_values.map { |char| char.chr }.join
end

puts caesar_cipher("What a string!", 5)
