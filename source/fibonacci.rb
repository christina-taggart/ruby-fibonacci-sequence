def fibonacci_iterative(number)
  if number > 0
    previous = 0
    current = 1
    (number - 1).times do
    previous, current = current, current + previous
    end
    current
  else
    0
  end
end

def fibonacci_recursive(number, previous = 0, current = 1)
  number > 0 ? fibonacci_recursive(number-1, current, current + previous) : previous
end


puts "---- fibonacci_iterative ----"
puts fibonacci_iterative 0
puts fibonacci_iterative 1
puts fibonacci_iterative 2
puts fibonacci_iterative 3
puts fibonacci_iterative 4
puts fibonacci_iterative 5
puts fibonacci_iterative 6
puts fibonacci_iterative 7

puts "---- fibonacci_recursive ----"
puts fibonacci_recursive 0
puts fibonacci_recursive 1
puts fibonacci_recursive 2
puts fibonacci_recursive 3
puts fibonacci_recursive 4
puts fibonacci_recursive 5
puts fibonacci_recursive 6
puts fibonacci_recursive 7