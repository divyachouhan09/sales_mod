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
        

a=tax
b=a.round(2)
x=b
b=b*100
b=b.to_i
c=b%100
d=c%5

if(d==0)
    tax=x
else
    tax= x+(0.01*(5-d))
end
tax=tax.round(2)
    return tax
	end
end
