Node = Struct.new(:value, :nexst, :prev)

class List
	attr_reader :head, :tail

	def initialize(head, tail)
		@head=head
		@tail=tail
	end

	def insert(node)
		if(@tail==NIL)
			@tail=node
			@head=node
		else
			node.prev=@tail
			@tail.nexst=node
			@tail=node
		end
	end
end
