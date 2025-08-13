dia = 'ter'

if dia == 'seg'
  puts "Segundou"
elsif dia == "sex"
  puts "Sextou"
else
  puts "Normal"
end

puts "=========="

arr = ["a","b","c", "d"]
count = 1

for x in arr
  puts x << " " << "#{count}"
  count+=1
end

puts "=========="

x = 1

while x < 10
  puts x
  x+=1
end

puts "=========="

num = 1
loop do 
  puts num
  break if num == 10
  num+=1
end

puts "=========="

10.times do
  puts "ola"
end