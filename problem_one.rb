

word = "Hello world"
charecters = %w(w o l)

puts charecters.inspect

word.each_char do |char|
  new_word = charecters.include? char
  puts charecters.include? char
end
