require 'prct06/nutrition'
require 'prct06/list.rb'
#require 'prct06/antro.rb'

RSpec.describe Prct06 do
	before :each do
                @list = List.new(nil,nil)
		@nutrition = Nutrition.new(1,1,1,1,1,1,1,1,1,"Oreo")
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

        end
end
