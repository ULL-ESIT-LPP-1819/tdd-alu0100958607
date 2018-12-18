class Guy
	#Definición de atributos de clase Guy
	attr_reader :nombre, :dni
	
	#Función initialize de la clase Guy
	def initialize(nombre, dni)
		@nombre, @dni=nombre, dni
	end
end
