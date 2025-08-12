class Qualificacao_restaurante
  attr_accessor :nota

  def initialize(nota)
  @nota = nota
  end

  def qualifica(nota, msg="Obrigado")
    puts "A nota do restaurante foi #{nota}. #{msg}"
  end

  def self.instancia(nota)
    self.new(nota)
  end

  def to_s
    puts "Nota: #{@nota}"
  end
end

rs1 = Qualificacao_restaurante.instancia(10)

puts rs1.to_s
