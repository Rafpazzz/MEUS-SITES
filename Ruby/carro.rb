class Carro
  attr_accessor :quantidade

  def initialize(modelo, cor, ano, quantidade)
    @modelo = modelo
    @cor = cor
    @ano = ano
    @quantidade = quantidade
  end

  def quantidade_de_carros
    puts "#{@quantidade}"
  end

end

gol = Carro::new("Ferrari","Vermelha",2025,4)

puts gol.quantidade
