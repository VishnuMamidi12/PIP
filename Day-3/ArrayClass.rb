class RoundRobin
  def initialize(num_arrays)
    @arrays = Array.new(num_arrays) { [] }
    @current_index = 0
  end

  def insert(element)
    @arrays[@current_index] << element
    @current_index = (@current_index + 1) % @arrays.length
  end

  def display
    puts "display method is called"
    @arrays.each_with_index do |array, index|
      puts "Array #{index}: [#{array.join(", ")}]"
    end
  end

  def reset
    puts "reset method is called"
    @arrays.each(&:clear)
  end
end

rr = RoundRobin.new(3)

rr.insert(1)
rr.insert(2)
rr.insert(3)
rr.insert(4)
rr.insert(5)

rr.display

rr.reset
rr.display
