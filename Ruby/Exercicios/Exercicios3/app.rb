a = gets.to_i
b = gets.to_i
result = 0
begin
  result = a/b
rescue 
  puts "Não pode dividir por zero"
  exit
end

puts result
