def stock_picker(prices)
    if prices.length < 2
      puts "Insufficient data for stock picking."
      return
    end
  
    max_profit = 0
    best_days = [0, 0]
  
    prices.each_with_index do |buy_price, buy_day|
      (buy_day + 1...prices.length).each do |sell_day|
        sell_price = prices[sell_day]
        current_profit = sell_price - buy_price
  
        if current_profit > max_profit
          max_profit = current_profit
          best_days = [buy_day, sell_day]
        end
      end
    end
  
    if max_profit > 0
      puts "Best days to buy and sell: #{best_days}"
      puts "Max Profit: #{max_profit}"
    else
      puts "No profitable transactions possible."
    end
  end
  
  # Example usage:
  stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
  stock_picker(stock_prices)
  