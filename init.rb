module Init
	def no_of_items(a)
		return a[0].to_i
	end

	def price(a)
		return a[-1].to_f
	end

	def item(a)
		s=""
        for i in 1...a.size-2
            s=s+a[i]+" "
        end
        return s
    end
end