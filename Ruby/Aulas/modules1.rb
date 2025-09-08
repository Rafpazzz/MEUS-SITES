module Saudacao
    def oi 
        puts "ola"
    end

    def tchau
        puts "ate logo"
    end
end

class Pessoa
    include Saudacao
end

p1 = Pessoa.new
p1.oi