class Fruits {
    constructor(numArrays) {
      this.arrays = new Array(numArrays).fill().map(() => []);
    }
    insert(index, element) {
      if (index < 0 || index >= this.arrays.length) {
        throw new Error(`Index ${index} is`);
      }
      this.arrays[index].push(element);
    }
    display() {
      this.arrays.forEach((array, index) => {
        console.log(`Array ${index}: [${array.join(", ")}]`);
      });
    }
  
    reset() {
      this.arrays.forEach((array) => {
        array.length = 0;
      });
    }
  }
  const fruit = new Fruits(3);

  fruit.insert(0, "apple");
  fruit.insert(1, "banana");
  fruit.insert(2, "orange");
  fruit.insert(0, "pear");
  fruit.insert(1, "grape");
  
  fruit.display();
  fruit.reset();
  fruit.display();