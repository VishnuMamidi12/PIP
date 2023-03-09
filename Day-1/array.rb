arr1 = []
arr2 = []
arr3 = []
a = 0

def array(element, a, arr1, arr2, arr3)
  if a % 3 == 0
    arr1 << element
  elsif a % 3 == 1
    arr2 << element
  else
    arr3 << element
  end
  a += 1
  return a, arr1, arr2, arr3
end

a, arr1, arr2, arr3 = array('A', a, arr1, arr2, arr3)
a, arr1, arr2, arr3 = array('B', a, arr1, arr2, arr3)
a, arr1, arr2, arr3 = array('C', a, arr1, arr2, arr3)
a, arr1, arr2, arr3 = array('D', a, arr1, arr2, arr3)
a, arr1, arr2, arr3 = array('E', a, arr1, arr2, arr3)
a, arr1, arr2, arr3 = array('F', a, arr1, arr2, arr3)

puts arr1.inspect
puts arr2.inspect
puts arr3.inspect
