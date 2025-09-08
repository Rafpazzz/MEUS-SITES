def foo
    yield #faz a chamada do bloco
end

foo do 
    puts "dentro do bloc"
    puts "dentro do bloc"
end

def foo2
    if block_given?
        yield
    else
        puts "nao foi passado bloco"
    end
end

foo2
foo2 {puts "dentro do blçoco 2"}

def foo3(name, &bloco)
    @name = name
    bloco.call
end

foo3("rafael") {puts "meu nome é #{@name}" }

def foo4(numbers, &bloc)
    if block_given?
        numbers.each do |key, value|
            bloc.call(key, value)
        end
    end
end

numbers = {1 => 1, 2 => 2, 3 => 3}

foo4(numbers ) do |key, values|
    puts "#{key} + #{values} = #{key + values}"
end