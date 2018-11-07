class Nutrition
	
	attr_reader :saturadas, :monoinsaturadas, :polinsaturadas, :azucares, :polialcoholes, :almidon, :fibra, :proteinas, :sal

	def initialize(saturadas, monoinsaturados, polinsaturadas, azucares, polialcoholes, almidon, fibra, proteinas, sal)
		@saturadas, @monoinsaturados, @polinsaturadas, @azucares, @polialcoholes, @almidon, @fibra, @proteinas, @sal = saturadas, monoinsaturados, polinsaturadas, azucares, polialcoholes, almidon, fibra, proteinas, sal
	end

end
