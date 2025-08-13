carros = ["Gol", "Vectra", "S10"]

#def modfica(a)
#  a.each_with_index do |valor, i|
#    a[i] = valor.upcase!
#  end
#end

def modifica(a)
    a.map!(&:upcase)
end

modifica(carros)

carros.each do |data|
  puts data
end
