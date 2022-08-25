module Price
	def price_cal(price,no_of_items,tax)
		price*=no_of_items
        price=price+tax
        price=price.round(2)
    end
end