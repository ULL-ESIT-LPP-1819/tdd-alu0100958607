require 'prct06/nutrition'
require 'prct06/list.rb'
require 'prct06/antro.rb'

RSpec.describe Prct06 do
	before :each do
                @list = List.new(nil,nil)
		@nutrition = Nutrition.new(1,1,1,1,1,1,1,1,1,"Oreo")
		@antro = Antro.new(80,185)
        end

        describe "Tests de herencia y clase antropometrica" do
                it "Existe la clase List" do
                        expect(@list.class).to eq(List)
                end

		it "Comprobando que @list es instancia de la clase List" do
			expect(@list.instance_of? List).to eq(true)
		end

		it "Comprobando que @list es un objeto de la clase List" do
			expect(@list.is_a? List).to eq(true)
		end

		it "Comprobando que @nutrition pertenece a la clase Nutrition" do
			expect(@nutrition.class).to eq(Nutrition)
		end

		it "Comprobando que @nutrition es instancia de la clase Nutrition" do
			expect(@nutrition.instance_of? Nutrition).to eq(true)
		end

		it "Comprobando que @nutrition es un objeto de la clase Nutrition" do
			expect(@nutrition.is_a? Nutrition).to eq(true)
		end

		it "Comprobando que @antro pertenece a la clase Antro " do
			expect(@antro.class).to eq(Antro)
		end

        end
end

