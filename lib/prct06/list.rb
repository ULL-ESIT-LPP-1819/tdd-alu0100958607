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

	def extract
		if(@head==NIL)
			puts "Lista vacia"
		else
			aux=@head
			@head=@head.nexst
			aux.nexst=NIL
			return aux
		end
	end

	def empty
		if(@tail==NIL)
			return true
		end
	end

	def insert_head(node)
		if(@head==NIL)
			@tail=node
			@head=node
		else
			node.nexst=@head
			@head.prev=node
			@head=node
		end
	end
end
