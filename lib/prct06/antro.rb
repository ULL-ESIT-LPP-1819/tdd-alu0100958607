require 'prct06/guy.rb'

class Antro < Guy
	
	include Comparable
	#Definicion de atributos de la clase	
	attr_reader :peso, :altura, :edad, :sexo, :cintura, :cadera, :actividad
	
	#Definicion del metodo initialize de la clase antropometrico
        def initialize(peso, altura, edad, sexo, cintura, cadera, actividad)
		@peso ,@altura ,@edad ,@sexo, @cintura, @cadera, @actividad = peso, altura, edad, sexo, cintura, cadera, actividad
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

	#Funcion para calcular el gasto energetico total
	def g_energetico
		if(@sexo == 1)
			@g_energetico_basal = (10 * @peso) + (6.25 * @altura) - (5 * @edad) + 5
		else
			@g_energetico_basal = (10 * @peso) + (6.25 * @altura) - (5 * @edad) - 161
		end

		@efecto_termogeno = @g_energetico_basal * 0.1

		@gasto_actividad = @g_energetico_basal * @factor_actividad

	end
	
	#Función de sobrecarga de los operadores comparables
	def <=> (other)
		imc <=> other.imc
	end
end
