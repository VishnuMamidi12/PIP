const numArrays = 9;
const arrays = new Array(numArrays).fill().map(() => []);

let a = 0;

function array(element) {
  const index = a % numArrays;
  arrays[index].push(element);
  a++;
}

array('A');
array('B');
array('C');
array('D');
array('E');
array('F');

for (let i = 0; i < numArrays; i++) {
  console.log(arrays[i]);
}
