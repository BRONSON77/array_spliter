class ArraySpliter

	def split_array(given_array, given_divisions)
		if given_array.kind_of?(Array) && given_array.count > 1 && given_divisions.is_a?(Integer) && given_divisions > 1
		  final_array = []

		  (0..given_divisions - 1).each do |gd|
			  partial_array = []

			  loop do
				  partial_array.push(given_array[gd])
				  gd = gd + given_divisions
        
          if given_array[gd].nil?
        	  break
          end
			  end
      
        final_array.push(partial_array)
      
		  end

		  (1..final_array.count-1).each do |c|
			  final_array[c].push(nil) if final_array[c-1].count > final_array[c].count
		  end

		  print final_array
		else
			print "Datos incorrectos"
		end
	end

end