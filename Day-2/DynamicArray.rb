num_arrays = 3
arrays = Array.new(num_arrays) { [] }

a = 0

def array(element, arrays, index)
  arrays[index] << element
end

['A', 'B', 'C', 'D', 'E', 'F'].each do |element|
  index = a % num_arrays
  array(element, arrays, index)
  a += 1
end

arrays.each do |array|
  p array
end
