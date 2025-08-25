#11
def troca!(a, b)
  temp = a.dup
  a.replace(b)
  b.replace(temp)
end
#12
x = "Ruby"
y = "Rails"

troca!(x, y)

puts x  # => "Rails"
puts y  # => "Ruby"
#13
class Integer
  def par?
    self % 2 == 0
  end

  def impar?
    self % 2 != 0
  end
end

puts 4.par?     # => true
puts 7.impar?   # => true

#14
dias = ["Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado"]
setima = "Sétima feira"

dias << setima

puts dias.inspect
# => ["Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado", "Sétima feira"]

#15
str = "ruby_power"
sym = str.to_sym

puts sym        # => :ruby_power
puts sym.class  # => Symbol
