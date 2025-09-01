class Carro
  attr_accessor :velociadade, :nome
  @@consumo

  def initialize(modelo, ano, velociadade, consumo)
    @modelo = modelo
    @ano = ano
    @velociadade = velociadade
    @@consumo = consumo
  end

  def acelerando(valor)
    self.velociadade += valor
  end

  def calc_consumo()
    begin
      if(@@consumo >= 9)
        puts "Consumo Bom!"
      else
        raise ArgumentError, "Consumo anima do padrão!"
      end
    rescue ArgumentError => e
      puts "Excessao capturada!"
      puts e.message
    end
  end
  
  

end

car1 = Carro.new("ferrari", 2030, 0, 6)

car1.acelerando(30)
puts car1.velociadade
car1.acelerando(10)
puts car1.velociadade
car1.calc_consumo