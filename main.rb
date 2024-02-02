def stock_picker (prices)
max_profit = 0
best_days = []
prices.each_with_index do |buy_price , buy_day|
  (buy_day...prices.length).each do |sell_day|
    sell_price = prices[sell_day]
    profit = sell_price - buy_price

    if profit > max_profit
      max_profit = profit
      best_days = [buy_day,sell_day]
    end
  end
end
puts max_profit
best_days
end
stock_picker([17,3,6,9,15,8,6,1,10])
