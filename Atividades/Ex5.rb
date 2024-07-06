class Carro
  attr_accessor :marca, :modelo

  # Construtor
  def initialize(marca, modelo)
    @marca = marca
    @modelo = modelo
  end

  # Apresentação
  def apresentacao
    puts "Marca: #{@marca}"
    puts "Modelo: #{@modelo}"
  end
end

meu_carro = Carro.new("Ford", "Fiesta")

meu_carro.apresentacao

meu_carro.marca = "Chevrolet"
meu_carro.modelo = "Celta"

puts meu_carro.marca
puts meu_carro.modelo
