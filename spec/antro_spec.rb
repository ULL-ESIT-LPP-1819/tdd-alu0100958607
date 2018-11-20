require 'prct06/nutrition'
require 'prct06/list.rb'
#require 'prct06/antro.rb'

RSpec.describe Prct06 do
	before :each do
                @list = List.new(nil,nil)
        end

        describe "Tests de herencia y clase antropometrica" do
                it "Existe la clase List" do
                        expect(@list.class).to eq(List)
                end

		it "Comprobando que @list es instancia de la clase List" do
			expect(@list.instance_of? List).to eq(true)
		end
        end
end

