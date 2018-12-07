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
		@nutri1 = Nutrition.new(1,1,1,1,1,1,1,1,1,"Oreo")
		@nutri2 = Nutrition.new(2,2,2,2,2,2,2,2,2,"Oreo min")
		@nutri3 = Nutrition.new(3,3,3,3,3,3,3,3,3,"Lays")
		@nutri4 = Nutrition.new(4,4,4,4,4,4,4,4,4,"Chips a hoy")
		@nutri5 = Nutrition.new(5,5,5,5,5,5,5,5,5,"Ruffles")

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
			expect(aux.value.imc).to be<(25)

			aux = @list.extract
                        expect(aux.value.imc).to be<(25)
			
			aux = @list.extract
                        expect(aux.value.imc).to be>(25)

			aux = @list.extract
                        expect(aux.value.imc).to be<(25)

			aux = @list.extract
                        expect(aux.value.imc).to be>(25)

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

		it "Comprobando el comparador between" do
                        @nutrition1 = Nutrition.new(10,10,10,10,10,10,10,10,10,"Oreo")
                        @nutrition2 = Nutrition.new(20,10,40,10,70,90,10,30,10,"Lays")
			@nutrition3 = Nutrition.new(11,11,11,11,11,11,11,11,11,"Dinosaurus")

			expect(@nutrition3.between?(@nutrition1, @nutrition2)).to eq(true)

                end


	end

	describe "Pruebas de comparación de datos antropometricos" do
		
		it "Comprobación de comparadores" do
			@antro1 = Antro.new(80, 1.80, 3, 4, 5, 6)
			@antro2 = Antro.new(117, 1.90, 3, 4, 5, 6)
			@antro3 = Antro.new(85, 1.8, 3,4,5,6)

			expect(@antro1 > @antro2).to eq(false)
			expect(@antro1 < @antro2).to eq(true)
			expect(@antro1 == @antro2).to eq(false)
			expect(@antro1 >= @antro2).to eq(false)
			expect(@antro1 <= @antro2).to eq(true)
			expect(@antro3.between?(@antro1, @antro2)).to eq(true)

		end
	end

	describe "Pruebas de operadores enumerables de la lista de etiquetas" do
		it "Comprobacion de enumerables" do
			@list.insert(@nutri1)
                	@list.insert(@nutri2)
                	@list.insert(@nutri3)
                	@list.insert(@nutri4)
               		@list.insert(@nutri5)

			expect(@list.min).to eq(@nutri1)
			expect(@list.max).to eq(@nutri5)
			expect(@list.sort).to eq([@nutri1,@nutri2,@nutri3,@nutri4,@nutri5])
			expect(@list.collect{|i| @nutri4}).to eq([@nutri4,@nutri4,@nutri4,@nutri4,@nutri4])
			expect(@list.select{|i| i.etiqueta =="Oreo"}).to eq([@nutri1])
		end
	end

	describe "Pruebas de operadores enumerables de la lista de antro" do
		it "Comprobacion de enumerables de antro" do
			@list.insert(@antro1)
			@list.insert(@antro2)
			@list.insert(@antro3)
			@list.insert(@antro4)

			expect(@list.min).to eq(@antro2)
			expect(@list.max).to eq(@antro3)
			expect(@list.sort).to eq([@antro2,@antro4,@antro1,@antro3])
			expect(@list.collect{|i| @antro1}).to eq([@antro1,@antro1,@antro1,@antro1])
			expect(@list.select{|i| i.peso == 80}).to eq([@antro1])
		end
	end
end

