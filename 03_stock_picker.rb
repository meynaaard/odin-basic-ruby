require "pry-byebug"

=begin
My algorithm:
1. Create a method #stock_picker that accepts an argument `stock_prices`, where
   `stock_prices` is an array of stock price per day.
2. Iterate over the `stock_prices` array using #each_with_index, to get the
   index as `day` starting from 0 and the `price` for each day
=end

def stock_picker(stock_prices)
  stock_prices.each_with_index do |price, day|
    puts "Day #{day} - #{price}.00"
  end
end

stock_picker([17,3,6,9,15,8,6,1,10])
