require 'prct06/nutrition'
require 'prct06/list.rb'
require 'prct06/antro.rb'
require 'prct06/guy.rb'
require 'benchmark'

RSpec.describe Prct06 do
	before :each do
		
		@a1 = Antro.new(90,190,30,1,5,6,"reposo")
		@a2 = Antro.new(80,195,20,1,5,6,"intensa")
		@a3 = Antro.new(70,170,25,0,5,6,"reposo")
		@a4 = Antro.new(65,150,19,0,5,6,"moderada")
		@a5 = Antro.new(100,180,55,0,5,6,"intensa")

		@e1 = Nutrition.new(1,3,1,2,5,6,1,2,1,"Ensaladilla rusa")
	        @e2 = Nutrition.new(1,2,3,4,2,6,7,1,5,"Sandwich mixto")
		@e3 = Nutrition.new(3,4,2,1,2,3,2,1,1,"Potaje de lentejas")
		@e4 = Nutrition.new(3,3,1,3,3,1,3,0,3,"Bistec de cerdo")
		@e5 = Nutrition.new(1,1,1,1,1,1,1,1,1,"Ensalada de atun")



	end

	describe "Pruebas menu" do
		
		it "Prueba del gasto energetico:" do
			expect(@a1.g_energetico).to eq(2136.75)
		end

		it "Pruebas de los menus" do
			menu=[]
			pacientes=[]

			menu << @e1
			menu << @e2
			menu << @e3
			menu << @e4
			menu << @e5
			pacientes << @a1
			pacientes << @a2
			pacientes << @a3
			pacientes << @a4
			pacientes << @a5

			suma = menu.inject(0){|res,x| res + x.venergeticokj}
			puts "Valor energetico del menu: " + suma.to_s
			aptos = pacientes.select do|x|
				puts "Gasto energetico: " + x.g_energetico.to_s

				suma >= x.g_energetico*0.9 && suma <= x.g_energetico*1.1
			end

			expect(aptos.size).to eq(2)

				
		end

	end	
end
