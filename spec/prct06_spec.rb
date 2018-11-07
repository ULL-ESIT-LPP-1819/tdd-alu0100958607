require 'nutrition.rb'

RSpec.describe Nutrition do
	
	before :each do
		@nutrition = Nutrition.new(10,10,10,10,10,10,10,10,10,"Oreo")
	end

	describe "Etiqueta nutricional" do
		
		it "Almacenado correctamente: Grasas saturadas" do
			expect(@nutrition.saturadas).to eq(10)
		end

		it "Almacenado correctamente: Grasas monoinsaturadas" do
			expect(@nutrition.monoinsaturadas).to eq(10)
		end

		it "Almacenada correctamente: Grasas polinsaturadas" do
			expect(@nutrition.polinsaturadas).to eq(10)
		end

		it "Almacenado correctamente: Azucares" do
			expect(@nutrition.azucares).to eq(10)
		end

		it "Almacenado correctamente: Polialcoholes" do
			expect(@nutrition.polialcoholes).to eq(10)
		end

		it "Almacenado correctamente: Almidon" do
			expect(@nutrition.almidon).to eq(10)
		end

		it "Almacenado correctamente: Fibra" do
			expect(@nutrition.fibra).to eq (10)
		end

		it "Almacenado correctamente: Proteinas" do
			expect(@nutrition.proteinas).to eq(10)
		end

		it "Almacenado correctamente: Sal" do
			expect(@nutrition.sal).to eq(10)
		end

		it "Almacenado correctamente: Nombre de etiqueta" do
			expect(@nutrition.etiqueta) == "Oreo"
		end

		it "Valor correcto: Grasas totales" do
			expect(@nutrition.grasas).to eq(30)
		end

		it "Valor correcto: Total hidratos" do
			expect(@nutrition.hidratos).to eq(30)
		end

	end


end
