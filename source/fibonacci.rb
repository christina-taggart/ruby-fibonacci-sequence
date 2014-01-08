def fibonacci_iterative(n)
  fib = 0
  next_fib = 1
  n.times {
    prev_fib = fib
    fib = next_fib
    next_fib += prev_fib
  }
  fib
end

# Optimized with memoization: we are sacrificing memory for the sake of speed by
# storing each call of fibonacci_recursive(n) in this array:
@fibs = [0, 1, 1]
def fibonacci_recursive(n)
  @fibs[n] ||= fibonacci_recursive(n-2) + fibonacci_recursive(n-1)
end

#-----DRIVERS-----

puts "iterative:"
p fibonacci_iterative(0) == 0
p fibonacci_iterative(1) == 1
p fibonacci_iterative(6) == 8
p fibonacci_iterative(12) == 144

puts "recursive:"
p fibonacci_iterative(0) == 0
p fibonacci_iterative(1) == 1
p fibonacci_iterative(6) == 8
p fibonacci_iterative(12) == 144

#-----WHEN DOES THE RECURSIVE VERSION OVERFLOW?-----

# No immediate overflow thanks to memoizations, I interrupted after 5 mins
# at the 89755th fibonacci
n = 1
while n
  puts "--------------------"
  puts "Looking for the #{n}th fibonacci:"
  p fibonacci_recursive(n)
  n += 1
end