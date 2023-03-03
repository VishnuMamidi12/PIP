array1 = []
array2 = []
array3 = []

counter = 0

def add_element(element, arrays, counter)
    arrays[counter].push(element)
    counter = (counter +1) % arrays.length
    return counter
end
counter = add_element("A", [array1, array2, array3], counter)
counter = add_element("B", [array1, array2, array3], counter)
counter = add_element("C", [array1, array2, array3], counter)
counter = add_element("D", [array1, array2, array3], counter)
counter = add_element("E", [array1, array2, array3], counter)
counter = add_element("F", [array1, array2, array3], counter)

puts "Array 1: #{array1.inspect}"
puts "Array 2: #{array2.inspect}"
puts "Array 3: #{array3.inspect}"