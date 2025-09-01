class Animal
  attr_accessor :nome, :idade

  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end

  def correr
    puts "Correndo!"
  end

  def aniversario
    self.idade += 1
  end
end

class Cachorro < Animal
  attr_accessor :raca

  def initialize(nome, idade, raca)
    super(nome, idade)
    @raca = raca
  end

  def latir
    puts "latir"
  end
end

class Gato < Animal
  attr_accessor :raca

  def initialize(nome, idade, raca)
    super(nome, idade)
    @raca = raca
  end

  def miar
    puts "Miando"
  end
end

dog1 = Cachorro.new("bobe", 2, "PitBull")
dog1.latir()
dog1.aniversario()
p dog1
