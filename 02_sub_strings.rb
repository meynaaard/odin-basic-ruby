=begin
My algorithm:
1. Create a method #substrings that takes two arguments: `string` and
   `substring_list` where `string` is a string and `substring_list` is a
   valid array of substrings
2. Iterate over the `substring_list` using #select and select the elements that
   are substring of the provided `string` argument,
3. Tally the selected using #tally elements in the `substring_list` to return
   the hash of substring occurrence count
=end

def substrings(string, substring_list)
  substring_list.select do |substring|
    string.downcase.include?(substring)
  end.tally
end

dictionary = ["below","down","go","going","horn","how","howdy",
              "it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
