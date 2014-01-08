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

def fibonacci_recursive(n)
end

puts fibonacci_iterative 0
puts fibonacci_iterative 1
puts fibonacci_iterative 2
puts fibonacci_iterative 3
puts fibonacci_iterative 4
puts fibonacci_iterative 5
puts fibonacci_iterative 6
puts fibonacci_iterative 7