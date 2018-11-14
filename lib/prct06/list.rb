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
			if(@head!=NIL)
				@head.prev=NIL
			end
			aux.nexst=NIL
			if(@head==NIL)
				@tail=NIL
			end
			return aux
		end
	end

	def empty
		if(@tail==NIL)
			return true
		else
			return false
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

	def extract_tail
		if(@tail==NIL)
			puts "Lista vacia"
		else
			aux=tail
			@tail=@tail.prev
			if(@tail!=NIL)
				@tail.nexst=NIL
			end
			aux.prev=NIL

			if(@tail==NIL)
				@head=NIL
			end
			return aux
		end
	end

	def to_s
		aux=@head
		string="["
		
		if(@head!=NIL)
			while aux.nexst!=NIL do
				string+aux.value+","
				if(aux.nexst!=NIL)
					aux=aux.nexst
				end
			end
			string+"]"
		end
	end

end
