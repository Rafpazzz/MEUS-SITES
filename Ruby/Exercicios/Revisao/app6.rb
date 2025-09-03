arr = ["rafael", "ana", "paz"]

arr.push("moura") #ou arr<<"rafael"

puts "adicionand o um valor no final do array"
arr.each {|x| print "#{x} -- "}

puts
arr.pop()
puts "retirando o ultimo valor"
arr.each {|x| print "#{x} -- "}

puts
arr.unshift("maria")
puts "adicinando elemento no inicio do array"
arr.each {|x| print "#{x} -- "}

puts
puts "retirando o primeiro elemento do array" 
puts arr.shift << " :retornando valor"
arr.each {|x| print "#{x} -- "}

puts
puts "inserindo um ou mais valores no array"
arr.insert(arr.size,"paz", "paz") #o .insert deve recebre um inteiro no inicio para informar a posição para inserção
arr.each {|x| print "#{x} -- "}


# puts
# puts "deletando de uma posição especifica"
# arr.delete_at(2)
# arr.each {|x| print "#{x} -- "}

# puts
# puts "deletando as ocorrencias de um valor especifico"
# arr.delete("paz")

puts
puts "criando um novo array aplicando uma transformação nos elementos usando map ou collection"
new_arr = arr.map {|x| x.upcase!}
puts new_arr

puts 
puts "retorna um novo array com os elementos da condição usando o filter ou select"
new_arr = arr.filter {|x| x.equal?("RAFAEL" || "ANA")}
puts new_arr.inspect

# o find retorna o primeiro elemento em torno de uma condução
# include? se um elemento pertence ao array
# .join() retorna um novo array com todos os elemtendo formatados dentro de um string