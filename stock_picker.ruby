require 'pry-byebug'

def stock_picker(stock_prices)
    min_day = 0
    max_day = 1
    stock_prices.each_with_index do |stock_sell, index_buy|
        stock_prices.each_with_index do |stock_buy, index_sell|
            if stock_sell - stock_buy > stock_prices[max_day] - stock_prices[min_day] && index_buy > index_sell
                min_day = index_sell
                max_day = index_buy
            end
        end
    end
    return min_day, max_day
end


print stock = [17,5,2,9,15,8,6,19,10]
puts ' '
print stock_picker(stock)