
array_of_integer = [33, 12, 1, 9, 2, 5]
target = 3


# Find two indices within the array, the sum of the value at these indices should equal the value.
# Return a list/array of these two indices.

# Constraint: Each index should be used only once.

hash_map = {}
def add_two
  
  array_of_integer.each_with_index do |number, index|
    array_of_integer.each_with_index do |number, index2|
      if array_of_integer[index] + array_of_integer[index2] === target
        puts array_of_integer[index] , "+" , array_of_integer[index2] , "is True"
        return [hash_map[number] = index]
      end
      nil
    end
  end
end

puts "hashmap", add_two