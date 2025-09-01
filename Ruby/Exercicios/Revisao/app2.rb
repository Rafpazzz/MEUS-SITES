#invertendo o valor de strings

def troca(str1, str2)
  temp = str1.dup
  str1.replace(str2)
  str2.replace(temp)
end

str1 = "a"
str2 = "b"

troca(str1, str2)

puts str1
puts str2


