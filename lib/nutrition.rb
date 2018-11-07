class Nutrition
	
	attr_reader :saturadas, :monoinsaturadas, :polinsaturadas, :azucares, :polialcoholes, :almidon, :fibra, :proteinas, :sal

	def initialize(saturadas, monoinsaturadas, polinsaturadas, azucares, polialcoholes, almidon, fibra, proteinas, sal)
		@saturadas, @monoinsaturadas, @polinsaturadas, @azucares, @polialcoholes, @almidon, @fibra, @proteinas, @sal = saturadas, monoinsaturadas, polinsaturadas, azucares, polialcoholes, almidon, fibra, proteinas, sal
	end

end
