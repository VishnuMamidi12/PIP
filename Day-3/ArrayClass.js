class RoundRobin {
  constructor(numArrays) {
    this.arrays = Array.from({ length: numArrays }, () => []);
    this.currentIndex = 0;
  }

  insert(element) {
    this.arrays[this.currentIndex].push(element);
    this.currentIndex = (this.currentIndex + 1) % this.arrays.length;
  }

  display() {
      console.log("display method is called");
    this.arrays.forEach((array, index) => {
      console.log(`Array ${index}: [${array.join(", ")}]`);
    });
  }

  reset() {
      console.log("reset method is called");
    this.arrays.forEach((array) => {
      array.length = 0;
    });
  }
}


const rr = new RoundRobin(3);

rr.insert(1);
rr.insert(2);
rr.insert(3);
rr.insert(4);

rr.display();

rr.reset();
rr.display();

