# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
# You may assume that each input would have exactly one solution, and you may not use the same element twice.
# You can return the answer in any order
# Simple explination:
# Find two indices within the array, the sum of the value at these indices should equal the value.
# Return a list/array of these two indices.

# Constraint: Each index should be used only once.

def add_two(array, target)
  hash_map = {}
  array.each_with_index do |number, index|
    (index+1...array.length).each do |index2|
      if array[index] + array[index2] == target
        hash_map[number] = index
        hash_map[number] = index2
      end
    end
  end
  hash_map
end


array_of_integer = [33, 12, 1, 9, 2, 5]
target = 14


puts "Target is #{target}"
puts add_two(array_of_integer, target).values.inspect
