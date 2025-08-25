class Consumo
  attr_accessor :consumo

  def initialize(consumo)
    @consumo = consumo
  end

  def verificaConsumo(consumo)
    if(consumo > 7)
      raise RuntimeError, "Consumo nao pode ser maior que 7"
    else
      puts "Ok"
    end
  end

  def imprimitConsumo
    puts "Consumo é #{self.consumo}"
  end
end

c = Consumo.new(5)

c.verificaConsumo(c.consumo)
c.imprimitConsumo
