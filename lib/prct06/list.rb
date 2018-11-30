Node = Struct.new(:value, :nexst, :prev)

class List

	include Enumerable
	attr_reader :head, :tail

	def initialize(head, tail)
		@head=head
		@tail=tail
	end

	def insert(value)
		node = Node.new(value, nil, nil)
		if(@tail==nil)
			@tail=node
			@head=node
		else
			node.prev=@tail
			@tail.nexst=node
			@tail=node
		end
	end

	def extract
		if(@head==nil)
			puts "Lista vacia"
		else
			aux=@head
			@head=@head.nexst
			if(@head!=nil)
				@head.prev=nil
			end
			aux.nexst=nil
			if(@head==nil)
				@tail=nil
			end
			return aux
		end
	end

	def empty
		if(@tail==nil)
			return true
		else
			return false
		end
	end

	def insert_head(value)
		node = Node.new(value, nil, nil)

		if(@head==nil)
			@tail=node
			@head=node
		else
			node.nexst=@head
			@head.prev=node
			@head=node
		end
	end

	def extract_tail
		if(@tail==nil)
			puts "Lista vacia"
		else
			aux=tail
			@tail=@tail.prev
			if(@tail!=nil)
				@tail.nexst=nil
			end
			aux.prev=nil

			if(@tail==nil)
				@head=nil
			end
			return aux
		end
	end

	def to_s
		aux=@head
		string="["
		
		if(@head!=nil)
			while aux!=nil do
				string+=aux.value.to_s+","
				if(aux.nexst!=nil)
					aux=aux.nexst
				else
					aux=nil
				end
			end
			string+="]"
		end

		return string
	end

	def each(&block)
		aux = @head
		while aux!=nil do
			yield aux.value
			aux = aux.nexst
		end
	end
end
