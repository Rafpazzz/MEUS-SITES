puts "Hello World"
puts 1 + 1

(1..10).each do |n|
  puts "#{n} é par" if n.even?
end

puts "Informe seu nome"

name = gets.chomp

puts "Nome: #{name}"

a = name.class

puts "#{a}"