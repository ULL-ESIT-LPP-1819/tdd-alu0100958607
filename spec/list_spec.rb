require 'prct06/nutrition'
require 'prct06/list.rb'

RSpec.describe List do
	before :each do
		@node1 = Node.new(1,NIL,NIL)
		@node2 = Node.new(2,NIL,NIL)
		@list = List.new(NIL,NIL)
	end

	describe "Tests de la pila" do
		it "Inserción en la pila 1" do
			@list.insert(@node1)
			expect(@list.tail.value).to eq(1)
		end

		it "Inserción en la pila 2" do
                        @list.insert(@node2)
                        expect(@list.tail.value).to eq(2)
                end

		it "Extracción de la pila" do
			@list.insert(@node1)
			@list.insert(@node2)
			aux=@list.extract
			expect(aux.value).to eq(1)
		end
	end
end
