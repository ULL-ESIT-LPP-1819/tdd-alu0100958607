require 'prct06/nutrition'
require 'prct06/list.rb'

RSpec.describe List do
	before :each do
		@node1 = Node.new(1,NIL,NIL)
		@node2 = Node.new(2,NIL,NIL)
		@list = List.new()
	end
end
