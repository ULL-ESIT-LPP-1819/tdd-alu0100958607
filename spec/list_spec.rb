require 'prct06/nutrition'
require 'prct06/list.rb'

RSpec.describe List do
	before :each do
		@node1 = Node.new(1,NIL,NIL)
		@node2 = Node.new(2,NIL,NIL)
		@list = List.new(NIL,NIL)
	end

	describe "Tests de la pila" do
		it "Inserción en la pila" do
			@lista.insert(@node1)
			expect(@lista.tail.value).to eq(1)
		end
	end
end
