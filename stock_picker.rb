def stock_picker(stock_prices)
  # create a hash of all potential profits
  profits = {}
  # loop over stock_prices
  stock_prices.each_with_index do | price1, idx1 | 
    # loop over stock_prices again to compare each day
    stock_prices.each_with_index do | price2, idx2 |
      # check if index from second loop is greater than first loop (you have to buy before you sell)
      if idx2 > idx1
        # add profits entry of value of second loop minus value from first loop with the key set to idx1, idx2
        profits[[idx1, idx2]] = price2 - price1
      end
    end
  end
  # sort profits by thier value
  profits = profits.sort_by { | k, v| v }
  # return the days of the last entry in the profits hash
  [profits[-1][0][0], profits[-1][0][1]]
end

puts stock_picker([17,3,6,9,15,8,6,1,10])