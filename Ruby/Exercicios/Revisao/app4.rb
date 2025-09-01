arr =[1,2,4,7,4,8]

for i in arr
  print "#{i} - "
end

puts 
arr.each {|x| print "#{x} - "}

puts
arr.each_with_index do |i, index|
  i+=1
  puts "#{index}: #{i}"
end

puts
arr.each do |x|
  if(x.even?)
    puts "#{x} é par"
  else
    puts "#{x} é impar"
  end
end

puts
i = 0
while i<arr.size
  if(arr[i].even?)  
    puts arr[i]
  end
  i+=1
end
