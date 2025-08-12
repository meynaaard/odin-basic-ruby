require "pry-byebug"

=begin
My algorithm:
1. Create a method #substrings that takes two arguments: `string` and
   `substring_list` where `string` is a string and `substring_list` is a
   valid array of substrings
2. Iterate over the `substring_list` using #reduce where initial value is an
   empty hash, accumulator is `substring_tally` and current item is `substring`
3. Use #downcase to `string` to make the check case-insensitive
4. Chain #scan to get substring occurrence where argument is `substring`
5. Chain #count to get count of the scanned occurrence
6. Assign these chained methods to variable `substring_count`
7. Add key/value pair by using `substring` as key and the `substring_count` as
   value for the `substring_tally` hash
8. Reject all pairs that have a value of 0, as they are irrelevant for the tally
=end

def substrings(string, substring_list)
  substring_list.reduce({}) do |substring_tally, substring|
    substring_count = string.downcase.scan(substring).count
    substring_tally[substring] = substring_count if substring_count > 0
    substring_tally
  end
end

dictionary = ["below","down","go","going","horn","how","howdy",
              "it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
