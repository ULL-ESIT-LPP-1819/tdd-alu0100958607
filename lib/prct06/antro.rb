require 'prct06/guy.rb'

class Antro < Guy
	
	include Comparable
	#Definicion de atributos de la clase	
	attr_reader :peso, :altura, :edad, :sexo, :cintura, :cadera
	
	#Definicion del metodo initialize de la clase antropometrico
        def initialize(peso, altura, edad, sexo, cintura, cadera)
                @peso ,@altura ,@edad ,@sexo, @cintura, @cadera = peso, altura, edad, sexo, cintura, cadera
        end

	#Función que calcula el imc de una persona
	def imc
		@imc = (@peso)/(@altura*@altura)
	end
	
	#Función que calcula el porcentaje de grasa de una persona
	def pgc
                @pgc = 1.2 * @imc + 0.23 * @edad - 10.8 * @sexo - 5.4
                @pgc.round(4)
        end
	
	#Función que calcula el RCC de una persona
        def rcc
                @rcc = @cintura.to_f / @cadera.to_f
        end
	
	#Función de sobrecarga de los operadores comparables
	def <=> (other)
		imc <=> other.imc
	end
end
