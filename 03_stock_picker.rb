require "pry-byebug"

=begin
My algorithm:
1. Create a method #stock_picker that accepts an argument `stock_prices`, where
   `stock_prices` is an array of stock price per day.
2. Iterate over the `stock_prices` array using #each_with_index, to get the
   index as `buy_day` starting from 0 and the `buy_price` for each day
3. Nest another iteration to check for potential `sell_day`, skip the day if it
   is less than or equal to `buy_day`
4. Calculate `profit` by subtracting the `buy_price` from the `sell_price`
5. Add `max_profit` variable, initialize to 0,
6. Keep track of max_profit by comparing it to the current `profit`
  IF `profit` greater than `max_profit`
    max_profit = profit
7. Add `best_days` empty array
8. Assign the buy and sell days to `best_days` inside the `max_profit` check
9. Return the `best_days` array
=end

def stock_picker(stock_prices)
  max_profit = 0
  best_days = []

  stock_prices.map.with_index do |buy_price, buy_day|
    stock_prices.map.with_index do |sell_price, sell_day|
      next if sell_day <= buy_day # skip the days that has already passed
      profit = sell_price - buy_price

      # this determines the best days to buy and sell
      if profit > max_profit
        max_profit = profit
        best_days = [buy_day, sell_day]
      end
    end
  end

  best_days
end

p stock_picker([17,3,6,9,15,8,6,1,10])
