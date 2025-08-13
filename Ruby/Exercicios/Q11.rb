arr = [0,1,2,3,4,5,6,7,8,9]

arr.append(10)
arr.append(11)
puts arr

tam = arr.length()
puts "Tamanho: #{tam}"

res = arr.empty?
puts "É vazio? #{res}"

res2 = arr.any? {|v| v > 10}
puts "Existe > 10? #{res2}"

def impares(a)
    a.select(&:odd?)
end

arr2 = impares(arr)

puts arr2