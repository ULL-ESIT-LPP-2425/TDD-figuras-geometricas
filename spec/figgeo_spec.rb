require 'figgeo'

describe 'Figuras Geométricas' do
  context 'Cuadrado - entero' do
     it 'El perímetro de un cuadrado de lado 4 tiene el valor de 16' do
       expect(perimetro_cuadrado(4)).to eq(16)
     end
     it 'El area de un cuadrado de lado 4 tiene el valor de 16' do
       expect(area_cuadrado(4)).to eq(16)
     end
  end
  context 'Cuadrado - real' do
    it 'El perímetro de un cuadrado de lado 4.0 tiene el valor de 16.0' do
      expect(perimetro_cuadrado(4.0)).to eq(16.0)
     end
    it 'El area de un cuadrado de lado 4.0 tiene el valor de 16.0' do
      expect(area_cuadrado(4.0)).to eq(16.0)
     end
  end
end
