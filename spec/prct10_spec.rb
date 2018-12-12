require 'prct06/nutrition'
require 'prct06/list.rb'
require 'prct06/antro.rb'
require 'prct06/guy.rb'

RSpec.describe Prct06 do
	before :each do
		
		@a1 = Antro.new(90,190,30,1,5,6,"reposo")
		@a2 = Antro.new(80,195,20,1,5,6,"intensa")
		@a3 = Antro.new(70,170,25,0,5,6,"reposo")
		@a4 = Antro.new(65,150,19,0,5,6,"moderada")
		@a5 = Antro.new(100,180,55,0,5,6,"intensa")

		@e1 = Nutrition.new(10,10,10,10,10,10,10,10,10,"Ensaladilla rusa")
	        @e2 = Nutrition.new(10,10,10,10,10,10,10,10,10,"Sandwich mixto")
		@e3 = Nutrition.new(10,10,10,10,10,10,10,10,10,"Potaje de lentejas")
		@e4 = Nutrition.new(10,10,10,10,10,10,10,10,10,"Bistec de cerdo")
		@e5 = Nutrition.new(10,10,10,10,10,10,10,10,10,"Ensalada de atun")



	end

	describe "Pruebas menu" do
		
		it "Prueba del gasto energetico:" do
			expect(@a1.g_energetico).to eq(2136.75)
		end

	end	
end
