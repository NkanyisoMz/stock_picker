def stock_picker(prices)
  return -[] if prices.empty? || prices.size <2
  
  min_price_idx =0
  max_profit = 0
  buy_day =0
  sell_day = 0
  
  prices.each_with_index do |price, idx|
    if price < prices[min_price_idx]
      min_price_idx = idx
    elsif price - prices[min_price_idx]>max_profit
      max_profit = price - prices[min_price_idx]
      buy_day = min_price_idx
      sell_day = idx
    end
  end
  [buy_day, sell_day]
end
# Example usage:
prices = [100, 180, 260, 310, 40, 535, 695]
puts stock_picker(prices).inspect  # Output: [0, 6]
prices = [2, 3, 9, 50, 50, 50, 90,30]
puts stock_picker(prices).inspect 
prices = [17,3,6,9,15,8,6,1,10]
puts stock_picker(prices).inspect 