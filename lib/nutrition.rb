class Nutrition
	
	attr_reader :saturadas, :monoinsaturadas, :polinsaturadas, :azucares, :polialcoholes, :almidon, :fibra, :proteinas, :sal, :etiqueta

	def initialize(saturadas, monoinsaturadas, polinsaturadas, azucares, polialcoholes, almidon, fibra, proteinas, sal, etiqueta)
		@saturadas, @monoinsaturadas, @polinsaturadas, @azucares, @polialcoholes, @almidon, @fibra, @proteinas, @sal, @etiqueta = saturadas, monoinsaturadas, polinsaturadas, azucares, polialcoholes, almidon, fibra, proteinas, sal, etiqueta
	end

	def grasas
		@grasas = @saturadas + @monoinsaturadas + @polinsaturadas
	end

	def hidratos
		@hidratos = @azucares + @polialcoholes + @almidon
	end

	def venergeticokj
		@venergeticokj = @saturadas * 37 + @monoinsaturadas * 37 + @polinsaturadas * 37 + @azucares * 17 + @polialcoholes *10 + @almidon * 17 + @fibra * 8 + @proteinas * 17 + @sal * 25
	end

	def venergeticokcal
		@venergeticokcal = @saturadas * 9 + @monoinsaturadas * 9 + @polinsaturadas * 9 + @azucares * 4 + @polialcoholes * 2.4 + @almidon * 4 + @fibra * 2 + @proteinas * 4 + @sal * 6
	end

	def get_nombre
		return @nombre
	end

	def get_sal
		return @sal
	end

	def get_saturadas
		return @saturadas
	end

end
