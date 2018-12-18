require 'prct06/nutrition'
require 'prct06/list.rb'
require 'prct06/antro.rb'
require 'prct06/guy.rb'
require 'prct06/array.rb'
require 'benchmark'

RSpec.describe Prct06 do
	before :each do
		
		@a1 = Antro.new(90,190,30,1,5,6,"reposo")
		@a2 = Antro.new(80,195,20,1,5,6,"intensa")
		@a3 = Antro.new(70,170,25,0,5,6,"reposo")
		@a4 = Antro.new(65,150,19,0,5,6,"moderada")
		@a5 = Antro.new(100,180,55,0,5,6,"intensa")

		@e1 = Nutrition.new(1,3,1,2,5,6,1,2,1,"Ensaladilla rusa")
		@e2 = Nutrition.new(1,1,1,1,1,1,1,1,1,"Sandwich mixto")
		@e3 = Nutrition.new(3,4,2,1,2,3,2,1,1,"Potaje de lentejas")
		@e4 = Nutrition.new(3,3,1,3,3,1,3,0,3,"Bistec de cerdo")
		@e5 = Nutrition.new(1,1,1,1,1,1,1,1,1,"Ensalada de atun")

		@array = []
		@list = List.new(nil,nil)
		
		@array << @e1
		@array << @e2
		@array << @e3
		@array << @e4
		@array << @e5

		@list.insert(@a1)
		@list.insert(@a2)
		@list.insert(@a3)
		@list.insert(@a4)
		@list.insert(@a5)

	end
	

	describe "Pruebas practica 11" do
		
		it "Comprobar ordenados" do
			
			expect(@array.sort).to eq([@e2,@e5,@e1,@e4,@e3])
			expect(@array.sort_for).to eq([@e2,@e5,@e1,@e4,@e3])
			expect(@array.sort_each).to eq([@e2,@e5,@e1,@e4,@e3])

			expect(@list.sort).to eq([@a4,@a3,@a5,@a2,@a1])
			expect(@list.sort_for).to eq([@a4,@a3,@a5,@a2,@a1])
			expect(@list.sort_each).to eq([@a4,@a3,@a5,@a2,@a1])
			
		end

		it "Comprobar benchmark" do
			
			n = 1500

			Benchmark.bm do |x|
				x.report("for:") {  n.times{@array.sort_for} }
                		x.report("each:") {  n.times{@array.sort_each} }
                		x.report("sort:") {  n.times{@array.sort} }

				x.report("for:") {  n.times{@list.sort_for} }
                                x.report("each:") {  n.times{@list.sort_each} }
                                x.report("sort:") {  n.times{@list.sort} }
            		end

		end	

	end
end
