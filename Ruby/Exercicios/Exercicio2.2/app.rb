arr = [1,2,5,7,4,3]

def ordena(ar)
  (1...ar.length).each do |i|
    data = ar[i]
    j = i - 1

    while j >= 0 && ar[j] > data
      ar[j + 1] = ar[j]
      j -= 1
    end

    ar[j + 1] = data
  end
  ar
end


puts arr
ordena(arr)
puts arr

array= ["rafael", "paz"]

def maiuscula(a)
  (a).each do |i|
    i.capitalize!
  end
end

maiuscula(array)
puts array