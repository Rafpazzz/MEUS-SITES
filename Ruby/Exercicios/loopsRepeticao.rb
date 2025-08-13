#loop 
i = 0
loop do
  puts "#{i}"
  i+=1
  break if i == 10
end

puts "==========="

#while
i = 0
while i <= 10 do
  puts "#{i}"
  i+=1
end

puts "=============="

#until -> laço continua enquanto a condição for falsa
i = 0
until i>10 do
  puts "#{i}"
  i+=1
end

puts"=========="

#for

for i in 0..5
  puts "#{i}"
end

puts"=========="

#Loop de tenmpo

5.times do
  puts "Fala ae"
end

puts"=========="

5.upto(10) {|num| print"#{num} "}

puts"=========="

10.downto(5) {|a| print"#{a} "}