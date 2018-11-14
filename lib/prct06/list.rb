Node = Struct.new(:value, :nexst, :prev)

class List
	attr_reader :head, :tail

	def initialize(head, tail)
		@head=head
		@tail=tail
	end
end
