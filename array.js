const arr1 = [];
const arr2 = [];
const arr3 = [];
let a = 0;
function array(element) {
  if (a % 3 === 0) {
    arr1.push(element);
  } else if (a % 3 === 1) {
    arr2.push(element);
  } else {
    arr3.push(element);
  }
  a++;
}

array('A');
array('B');
array('C');
array('D');
array('E');
array('F');

console.log(arr1);
console.log(arr2);
console.log(arr3);
