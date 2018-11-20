require 'prct06/nutrition'
require 'prct06/list.rb'

RSpec.describe List do
	before :each do
		@list = List.new(nil,nil)
		@nutrition1 = Nutrition.new(10,10,10,10,10,10,10,10,10,"Oreo")
		@nutrition2 = Nutrition.new(9,9,9,9,9,9,9,9,9,"Lays")
		@nutrition3 = Nutrition.new(5,5,5,5,5,5,5,5,5,"Donetes")
		@nutrition4 = Nutrition.new(1,1,1,1,1,1,1,1,1,"Chicles")
		@nutrition5 = Nutrition.new(3,3,3,3,3,3,3,3,3,"Mini Oreo")
		@nutrition6 = Nutrition.new(12,12,12,12,12,12,12,12,12,"Nutela")

		
	end

	describe "Tests de la pila" do
		it "Inserción en la pila 1" do
			@list.insert(1)
			expect(@list.tail.value).to eq(1)
		end

		it "Inserción en la pila 2" do
                        @list.insert(2)
                        expect(@list.tail.value).to eq(2)
                end

		it "Extracción de la pila" do
			@list.insert(1)
			@list.insert(2)
			aux=@list.extract
			expect(aux.value).to eq(1)
		end

		it "Comprobando método empty" do
			expect(@list.empty).to be(true)
		end

		it "Inserción por la cabeza" do
			@list.insert_head(1)
			expect(@list.head.value).to eq(1)
		end

		it "Extracción por la cola" do
			@list.insert_head(1)
			aux=@list.extract_tail
                        expect(aux.value).to eq(1)
		end

		it "Comprobación del to_s" do
			@list.insert(1)
			expect(@list.to_s)=="[1,]"
			puts @list.to_s
		end

		it "Ejemplo uso de la lista" do
			
			a1=[]
			a2=[]

			@list.insert(@nutrition1)
			@list.insert(@nutrition2)
			@list.insert(@nutrition3)
			@list.insert(@nutrition4)
			@list.insert(@nutrition5)
			@list.insert(@nutrition6)

			while !@list.empty do
				aux = @list.extract
				if(aux.value.sal<6)
					a1 << aux
				else
					a2 << aux
				end
			end
			
			expect(a1.length).to eq(3)
			expect(a2.length).to eq(3)
		end
	end
end
