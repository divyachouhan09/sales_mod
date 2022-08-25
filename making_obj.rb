module Obj
	def make(a,arr,i)
		a=a.split(" ")
		arr.push(Bill.new(a))
    	arr[i].tax_cal
    	arr[i].price_cal
    	arr[i].final_cal
    	return arr
    end
end