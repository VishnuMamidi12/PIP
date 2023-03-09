array1 = []
array2 = []
array3 = []

a = 0

def array(element, arr1, arr2, arr3, a)
  if a == 0
    arr1 << element
  elsif a == 1
    arr2 << element
  elsif a == 2
    arr3 << element
  end

  a = (a + 1) % 3
  return a
end

a = array('A', array1, array2, array3, a)
a = array('B', array1, array2, array3, a)
a = array('C', array1, array2, array3, a)
a = array('D', array1, array2, array3, a)
a = array('E', array1, array2, array3, a)
a = array('F', array1, array2, array3, a)

p array1
p array2
p array3