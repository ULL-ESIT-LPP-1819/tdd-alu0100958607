class Array
	
	def sort_for

		@aux = self

		for x in 0..self.length-1
			for y in 0..length-2-x
				if ( @aux[y] > @aux[y+1] )
					@aux[y], @aux[y+1] = @aux[y+1], @aux[y] 
				end
			end
		end

		return @aux

	end

	def sort_each
	end

end
