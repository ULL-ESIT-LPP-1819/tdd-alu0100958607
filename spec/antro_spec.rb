require 'prct06/nutrition'
require 'prct06/list.rb'
require 'prct06/antro.rb'
require 'prct06/guy.rb'

RSpec.describe Prct06 do
	before :each do
                @list = List.new(nil,nil)
		@nutrition = Nutrition.new(1,1,1,1,1,1,1,1,1,"Oreo")
		@antro = Antro.new(80,1.85,3,4,5,6)
		@guy = Guy.new("Jose", "111111A")
		@antro1 = Antro.new(80,1.85,2,3,4,5)
		@antro2 = Antro.new(50,1.60,2,3,4,5)
		@antro3 = Antro.new(117,1.90,2,3,4,5)
		@antro4 = Antro.new(75,1.85,2,3,4,5)
		@antro5 = Antro.new(80,1.70,2,3,4,5)

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

		it "Comprobando que @antro es una instancia de la clase Antro" do 
			expect(@antro.instance_of? Antro).to eq(true)
		end

		it "Comprobando que @antro es un objeto de clase Antro" do
			expect(@antro.is_a? Antro).to eq(true)
		end

		it "Comprobando que la clase antropometrico hereda de la clase Guy" do
			expect(@antro.is_a? Guy).to eq(true)
		end

		it "Comprobación de la pila con valores antopometricos" do
			@list.insert(@antro1)
			@list.insert(@antro2)
			@list.insert(@antro3)
			@list.insert(@antro4)
			@list.insert(@antro5)

			aux = @list.extract
			expect(aux.value.IMC).to be<(25)

			aux = @list.extract
                        expect(aux.value.IMC).to be<(25)
			
			aux = @list.extract
                        expect(aux.value.IMC).to be>(25)

			aux = @list.extract
                        expect(aux.value.IMC).to be<(25)

			aux = @list.extract
                        expect(aux.value.IMC).to be>(25)

		end


        end
	
	describe "Pruebas de comparación de etiqueta" do
		
		it "Comprobando el comparador <" do
		       	@nutrition1 = Nutrition.new(10,10,10,10,10,10,10,10,10,"Oreo")
                	@nutrition2 = Nutrition.new(20,10,40,10,70,90,10,30,10,"Lays")

                	expect(@nutrition1 < @nutrition2).to eq(true)

		end

		it "Comprobando el comparador >" do
                        @nutrition1 = Nutrition.new(10,10,10,10,10,10,10,10,10,"Oreo")
                        @nutrition2 = Nutrition.new(20,10,40,10,70,90,10,30,10,"Lays")

                        expect(@nutrition1 > @nutrition2).to eq(false)

                end

		it "Comprobando el comparador =" do
                        @nutrition1 = Nutrition.new(10,10,10,10,10,10,10,10,10,"Oreo")
                        @nutrition2 = Nutrition.new(20,10,40,10,70,90,10,30,10,"Lays")

                        expect(@nutrition1 == @nutrition2).to eq(false)

                end

		it "Comprobando el comparador <=" do
                        @nutrition1 = Nutrition.new(10,10,10,10,10,10,10,10,10,"Oreo")
                        @nutrition2 = Nutrition.new(20,10,40,10,70,90,10,30,10,"Lays")

                        expect(@nutrition1 <= @nutrition2).to eq(true)

                end

		it "Comprobando el comparador >=" do
                        @nutrition1 = Nutrition.new(10,10,10,10,10,10,10,10,10,"Oreo")
                        @nutrition2 = Nutrition.new(20,10,40,10,70,90,10,30,10,"Lays")

                        expect(@nutrition1 >= @nutrition2).to eq(false)

                end

	end

end

