ha = {"matricula" => 123, "idade" => 21, "funcao" => "programador", "sexo" => "Masculino", "empresa" => "UESPI", "setor" => "BackEnd"}

puts ha["matricula"]
puts ha["idade"]


hb = {:matricula => 123, :idade => 21, :funcao => "programador", :sexo => "Masculino", :empresa => "UESPI", :setor => "BackEnd"}

puts hb[:matricula] 
puts hb[:idade]

#def operacao
=begin
a = [10, 32, 43, 55]

for i in a
puts i
end
end
=end

arr = [1,2,3,4,5]

for i  in 0..arr.length()
  puts arr[i]
end