module Tax
	def tax_cal(no_of_items,price,item)
		tax=0
	if item.include?"imported"
            tax+=5
        end

        if item.include? "pills" or item.include? "chocolate" or item.include? "book"
            tax+=0
        else
            tax+=10 
        end

        tax*=price/100
        tax*=no_of_items
        tax=tax.round(2)
    return tax
	end
end
