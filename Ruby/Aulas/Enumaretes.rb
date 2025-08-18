friends = ["rafael", "Joao","Pedro", "Maria", "Ana"]
invited_friends = []

# for friends in friends do
#   if friends != "Pedro"
#     invited_friends.push(friends)
#   end
# end

#invited_friends = friends.select{ |friends| friends != "Pedro"} #select seleciona e retorna um novo array. O reject ele rejeita um valor
#invited_friends = friends.reject{|friends| friends == "Pedro"}

# friends.each{|friends| puts "Ola, " + friends}

# puts invited_friends

nuns = [1,2]

# nuns.each do |num|
#   num *= 2
#   puts num
# end

friends.select! {|friends| friends != "Pedro"}

puts friends