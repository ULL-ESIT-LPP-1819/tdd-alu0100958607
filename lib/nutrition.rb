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

end
