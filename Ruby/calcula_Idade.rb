segundos = 979_000_000
segundos_por_ano = 60 * 60 * 24 * 365

anos = segundos / segundos_por_ano

puts "Essa pessoa tem aproximadamente #{anos} anos."

def maior_idade(idade)
  if idade >= 18
    puts "Maior idade"
  else
    puts "Menor idade"
  end
end

maior_idade(20) 
maior_idade(15)  

def ternario(idade)
  puts idade >= 18 ? "Maior idade" : "Menor idade"
end

ternario(20) 
ternario(15)  

def classificar_idade(idade)
  if idade >= 18
    puts "Adulta"
  elsif idade >= 12
    puts "Adolescente"
  else
    puts "Criança"
  end
end

# Exemplos de uso
classificar_idade(25)  # => Adulta
classificar_idade(15)  # => Adolescente
classificar_idade(8)   # => Criança

