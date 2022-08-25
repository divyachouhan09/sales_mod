module Output
	def outp(arr)
		puts "OUTPUT:"

		arr.each do|x|
   		 x.outp
		end
	end
end
