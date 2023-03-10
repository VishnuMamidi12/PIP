num_arrays = 3
arrays = Array.new(num_arrays) { [] }

elements = ['A', 'B', 'C', 'D', 'E', 'F']

elements.each.with_index do |element, index|
  current_array = arrays[index % num_arrays]
  current_array << element
end

arr1, arr2, arr3 = arrays

puts arr1.inspect
puts arr2.inspect
puts arr3.inspect
