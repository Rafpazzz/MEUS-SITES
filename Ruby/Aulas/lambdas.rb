first_lamba = -> {puts "minha primeira lambda"}
first_lamba.call

lambda_2 = -> (names){ names.each {|name| puts name} }
names = ["rafael", "paz"]
lambda_2.call(names)

lambda_3 = lambda do |numbers|
    index = 0
    puts "primeiro numedo + segundo numero"
    numbers.each do |number|
        break if numbers[index] == numbers.last
        puts "(#{numbers[index]}) + (#{numbers[index + 1]})"
        puts numbers[index] + numbers[index + 1]
        index+=1
    end
end

numbers = [1,2,3,4]
lambda_3.call(numbers)