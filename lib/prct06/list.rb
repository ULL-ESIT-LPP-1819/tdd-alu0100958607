Node = Struct.new(:value, :nexst, :prev)

class List

	include Enumerable
	#Atributos de clase List
	attr_reader :head, :tail
	
	#Función initialize de la clase List
	def initialize(head, tail)
		@head=head
		@tail=tail
	end
	
	#Método de inserción
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
	
	#Método de extracción
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
	
	#Función que retorna si la lista es vacia o no
	def empty
		if(@tail==nil)
			return true
		else
			return false
		end
	end
	
	#Metodo de inserción por la cabeza
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
	
	#Método de extracción por la cola
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
	
	#Método to_s que combierte la clase a string
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
	
	#Funciones enumerables de la clase
	def each(&block)
		aux = @head
		while aux!=nil do
			yield aux.value
			aux = aux.nexst
		end
	end

	def sort_for
		@aux = self.map { |x| x }
		
		for x in 0..@aux.length-1
			for y in 0..@aux.length-2-x
				if ( @aux[y] > @aux[y+1] )
					@aux[y], @aux[y+1] = @aux[y+1], @aux[y]
				end
			end
		end

		return @aux
		
	end
end
