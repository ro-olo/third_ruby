def stock_picker(prices)

    buy_day = 0
    sell_day = 0
    min_price = prices.first
    max_profit = 0

    prices.each_with_index do |price, day| 
        
        if price < min_price
           min_price = price
           buy_day = day
        end

        profit = price - min_price

        if profit > max_profit
           profit = max_profit
           sell_day = day
        end

    end
    
    return [buy_day, sell_day]
end

puts stock_picker([17,3,6,9,15,8,6,1,10])