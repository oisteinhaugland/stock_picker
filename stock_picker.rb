
#du må kjøp før du kan selge
#Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. 
#It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.


def stock_picker(prices)
	buy_day = 0
	buy_value = 0

	sell_day = 0
	sell_value = 0

	differance = 0

	prices.each_with_index do |a,i|
		prices.each_with_index do |b,t|
			if (b - a) > differance && t > i

				buy_day = i
				buy_value = a 

				sell_day = t
				sell_value = b

				differance = b - a
			end
		end
	end

	sold = "Bought stock at day #{buy_day} for #{buy_value}$ -  Sold stock at day #{sell_day} for #{sell_value}$. Profit: "
	return sold + differance.to_s + "$"
	
end

p stock_picker([17,3,6,9,15,8,6,1,10])
