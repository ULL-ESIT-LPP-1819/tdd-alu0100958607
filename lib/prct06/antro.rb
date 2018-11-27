require 'prct06/guy.rb'

class Antro < Guy
	
	include Comparable	
	attr_reader :peso, :altura, :edad, :sexo, :cintura, :cadera

        def initialize(peso, altura, edad, sexo, cintura, cadera)
                @peso ,@altura ,@edad ,@sexo, @cintura, @cadera = peso, altura, edad, sexo, cintura, cadera
        end


	def imc
		@imc = (@peso)/(@altura*@altura)
	end

	def pgc
                @pgc = 1.2 * @imc + 0.23 * @edad - 10.8 * @sexo - 5.4
                @pgc.round(4)
        end

        def rcc
                @rcc = @cintura.to_f / @cadera.to_f
        end

	def <=> (other)
		imc <=> other.imc
	end
end
