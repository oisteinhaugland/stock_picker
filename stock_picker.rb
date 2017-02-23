def stock_picker(*stock_price) #each price represtents the price of a stock on a given day.
	
	buy_day = stock_price[0]
	sell_day = stock_price[1]
	profit = buy_day - sell_day

#doesnt work. rething
	stock_price.map do |x|
		if x <= buy_day 
			buy_day = x
		elsif x >= sell_day
			sell_day = x
		end

	end

	bestPrices = [buy_day, sell_day]
	return bestPrices
end

p stock_picker(5,6,3,1,2,3,4,5,6,7,8,9,0)

#hvis du får et lavere tall etter det høgeste.
#hvis du får det høgeste tallet før det laveste.