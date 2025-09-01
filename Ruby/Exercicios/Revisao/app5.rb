class Produto
  attr_accessor :nome, :preco, :quantidade

  def initialize(nome, preco, quantidade)
    @nome= nome
    @preco = preco
    @quantidade = quantidade
  end

  def self.calc_preco_prod(prod)
    result = prod.quantidade * prod.preco
    return result
  end

end

p1 = Produto.new("abacate", 2.5, 4)

puts Produto.calc_preco_prod(p1)
