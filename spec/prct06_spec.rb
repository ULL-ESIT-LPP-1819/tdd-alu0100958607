require 'prct06/nutrition.rb'
=begin
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

		it "Valor correcto: Valor energetico kJ" do
			expect(@nutrition.venergeticokj).to eq(2050)
		end

		it "Valor correcto: Valor energetico kcal" do
			expect(@nutrition.venergeticokcal).to eq(494)
		end

		it "Return correcto: Nombre" do
			expect(@test1 = @nutrition.get_nombre) == "Oreo"
		end

		it "Return correcto: Sal" do
			expect(@test2 = @nutrition.get_sal).to eq(10)
		end

		it "Return correcto: Grasas saturadas" do
			expect(@test3 = @nutrition.get_saturadas).to eq(10)
		end

		it "Return correcto: Azucares" do
			expect(@test4 = @nutrition.get_azucares).to eq(10)
		end

		it "Return correcto: Proteinas" do
			expect(@test5 = @nutrition.get_proteinas).to eq(10)
		end

		it "IR correcto: Valor energetico" do
			expect(@nutrition.irvenergetico).to eq(24.4)
		end

		it "IR correcto: Grasas totales" do
			expect(@nutrition.irgrasas).to eq(42.9)
		end

		it "IR correcto: Grasas saturadas" do
			expect(@nutrition.irsaturadas).to eq(50)
		end

		it "IR correcto: Hidratos de carbono" do
			expect(@nutrition.irhidratos).to eq(11.5)
		end

		it "IR correcto: Azucares" do
			expect(@nutrition.irazucares).to eq(11.1)
		end

		it "IR correcto: Proteinas" do
			expect(@nutrition.irproteinas).to eq(20)
		end

		it "IR correcto: Sal" do
			expect(@nutrition.irsal).to eq(166.7)
		end

	end

end

=end
