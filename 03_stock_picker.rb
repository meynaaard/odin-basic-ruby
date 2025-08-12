require "pry-byebug"

=begin
My algorithm:
1. Create a method #stock_picker that accepts an argument `stock_prices`, where
   `stock_prices` is an array of stock price per day.
2. Iterate over the `stock_prices` array using #each_with_index, to get the
   index as `buy_day` starting from 0 and the `buy_price` for each day
3. Nest another iteration to check for potential `sell_day`, skip the day if it
   is less than or equal to `buy_day`
4. Calculate profit by subtracting the `buy_price` from the `sell_price`
=end

def stock_picker(stock_prices)
  stock_prices.each_with_index do |buy_price, buy_day|
    stock_prices.each_with_index do |sell_price, sell_day|
      next if sell_day <= buy_day
      profit = sell_price - buy_price
      binding.pry
    end
  end
end

stock_picker([17,3,6,9,15,8,6,1,10])
