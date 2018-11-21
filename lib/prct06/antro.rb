require 'prct06/guy.rb'

class Antro < Guy
	attr_reader :peso, :altura

	def initialize(peso, altura)
		@peso,@altura = peso, altura
	end

	def IMC
		@imc = (@peso)/(@altura*@altura)
	end

end
