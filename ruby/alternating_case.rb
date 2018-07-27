class String
	#first iteration
	def to_alternating_case
		self.chars.map {|char| char == char.upcase ? char.downcase : char.upcase}join
	end
end

#second iteration
class String
	def to_alternating_case
		self.swapcase
	end
end	

