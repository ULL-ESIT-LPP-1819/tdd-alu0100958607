class Nutrition

	include Comparable
	#Atributos de la clase nutrition
	attr_reader :saturadas, :monoinsaturadas, :polinsaturadas, :azucares, :polialcoholes, :almidon, :fibra, :proteinas, :sal, :etiqueta
	
	#Función initialize de la clase nutrition
	def initialize(saturadas, monoinsaturadas, polinsaturadas, azucares, polialcoholes, almidon, fibra, proteinas, sal, etiqueta)
		@saturadas, @monoinsaturadas, @polinsaturadas, @azucares, @polialcoholes, @almidon, @fibra, @proteinas, @sal, @etiqueta = saturadas, monoinsaturadas, polinsaturadas, azucares, polialcoholes, almidon, fibra, proteinas, sal, etiqueta
	end
	
	#Función que retorna el total de grasas de un producto
	def grasas
		@grasas = @saturadas + @monoinsaturadas + @polinsaturadas
		return @grasas
	end
	
	#Función que retorna el total de hidratos de un producto
	def hidratos
		@hidratos = @azucares + @polialcoholes + @almidon

		return @hidratos
	end
	
	#Función que retrona el valor energetico en kilo Julios
	def venergeticokj
		@venergeticokj = @saturadas * 37 + @monoinsaturadas * 37 + @polinsaturadas * 37 + @azucares * 17 + @polialcoholes *10 + @almidon * 17 + @fibra * 8 + @proteinas * 17 + @sal * 25
		
		return @venergeticokj
	end
	
	#Función que retorna el valor energetico en kilo cal
	def venergeticokcal
		@venergeticokcal = @saturadas * 9 + @monoinsaturadas * 9 + @polinsaturadas * 9 + @azucares * 4 + @polialcoholes * 2.4 + @almidon * 4 + @fibra * 2 + @proteinas * 4 + @sal * 6
	end
	
	#Función que retorna el nombre del producto
	def get_nombre
		return @nombre
	end
	
	#Función que retorna la cantidad de sal de un producto
	def get_sal
		return @sal
	end
	
	#Función que retorna el total de grasas saturadas de un producto
	def get_saturadas
		return @saturadas
	end
	
	#Función que retorna el total de grasas azucar de un producto
	def get_azucares
		return @azucares
	end
	
	#Función que retorna el total de proteinas saturadas de un producto
	def get_proteinas
		return @proteinas
	end
	
	#Función que retorna el indice de referencia energetico de un producto
	def irvenergetico
		@venergeticokj = venergeticokj
		@irvenergetico = (@venergeticokj/8400.to_f) * 100
		@irvenergetico.round(1)

		return @irvenergetico.round(1)
	end
	
	#Función que retorna el indice de referencia de grasas de un producto
	def irgrasas
		@grasas = grasas
		@irgrasas = (@grasas/70.to_f) * 100
		@irgrasas.round(1)

		return @irgrasas.round(1)
	end
	
	#Función que retorna el indice de referencia de grsasas saturadas de un producto
	def irsaturadas
		@irsaturadas = (@saturadas/20.to_f) * 100
		@irsaturadas.round(1)

		return @irsaturadas.round(1)
	end
	
	#Función que retorna el indice de referencia de hidratos de un producto
	def irhidratos
		@hidratos = hidratos
		@irhidratos = (@hidratos/260.to_f) * 100
		@irhidratos.round(1)

		return @irhidratos.round(1)
	end
	
	#Función que retorna el indice de referencia de azucares de un producto
	def irazucares
		@irazucares = (@azucares/90.to_f) * 100
		@irazucares.round(1)

		return @irazucares.round(1)
	end

	#Función que retorna el indice de referencia de proteinas de un producto
	def irproteinas
		@irproteinas = (@proteinas/50.to_f) * 100
		@irproteinas.round(1)

		return @irproteinas.round(1)
	end

	#Función que retorna el indice de referencia de sal de un producto
	def irsal
		@irsal = (@sal/6.to_f) * 100
		@irsal.round(1)

		return @irsal.round(1)
	end
	
	#Función de definicion de comparables
	def <=> (other)
		venergeticokj <=> other.venergeticokj
	end

end
