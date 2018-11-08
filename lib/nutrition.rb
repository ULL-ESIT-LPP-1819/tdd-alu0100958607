class Nutrition
	
	attr_reader :saturadas, :monoinsaturadas, :polinsaturadas, :azucares, :polialcoholes, :almidon, :fibra, :proteinas, :sal, :etiqueta

	def initialize(saturadas, monoinsaturadas, polinsaturadas, azucares, polialcoholes, almidon, fibra, proteinas, sal, etiqueta)
		@saturadas, @monoinsaturadas, @polinsaturadas, @azucares, @polialcoholes, @almidon, @fibra, @proteinas, @sal, @etiqueta = saturadas, monoinsaturadas, polinsaturadas, azucares, polialcoholes, almidon, fibra, proteinas, sal, etiqueta
	end

	def grasas
		@grasas = @saturadas + @monoinsaturadas + @polinsaturadas
		return @grasas
	end

	def hidratos
		@hidratos = @azucares + @polialcoholes + @almidon

		return @hidratos
	end

	def venergeticokj
		@venergeticokj = @saturadas * 37 + @monoinsaturadas * 37 + @polinsaturadas * 37 + @azucares * 17 + @polialcoholes *10 + @almidon * 17 + @fibra * 8 + @proteinas * 17 + @sal * 25
		
		return @venergeticokj
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

	def get_azucares
		return @azucares
	end

	def get_proteinas
		return @proteinas
	end

	def irvenergetico
		@venergeticokj = venergeticokj
		@irvenergetico = (@venergeticokj/8400.to_f) * 100
		@irvenergetico.round(1)

		return @irvenergetico.round(1)
	end

	def irgrasas
		@grasas = grasas
		@irgrasas = (@grasas/70.to_f) * 100
		@irgrasas.round(1)

		return @irgrasas.round(1)
	end

	def irsaturadas
		@irsaturadas = (@saturadas/20.to_f) * 100
		@irsaturadas.round(1)

		return @irsaturadas.round(1)
	end

	def irhidratos
		@hidratos = hidratos
		@irhidratos = (@hidratos/260.to_f) * 100
		@irhidratos.round(1)

		return @irhidratos.round(1)
	end

	def irazucares
		@irazucares = (@azucares/90.to_f) * 100
		@irazucares.round(1)

		return @irazucares.round(1)
	end

	def irproteinas
		@irproteinas = (@proteinas/50.to_f) * 100
		@irproteinas.round(1)

		return @irproteinas.round(1)
	end

end
