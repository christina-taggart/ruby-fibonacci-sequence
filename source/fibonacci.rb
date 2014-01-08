def fibonacci_iterative(n)
  low_number = 0
  high_number = 1
  counter = 0
  while counter < n
    new_high_number = high_number + low_number
    low_number = high_number
    high_number = new_high_number
    counter += 1
  end
  low_number
end

def fibonacci_recursive (n, high_number = 1, low_number = 0, counter = 0)
  return low_number if n == counter
  new_high_number = low_number + high_number
  new_low_number = high_number
  counter += 1
  fibonacci_recursive(n, new_high_number, new_low_number, counter)
end

def assert
  start = Time.now
  yield
  done = Time.now
  p "Took " + ((done - start) * 1000) .to_s + " microseconds seconds to complete"
end
assert { fibonacci_iterative(5) }
assert { fibonacci_iterative(8) }
assert { fibonacci_iterative(0) }
assert { fibonacci_iterative(1) }
assert { fibonacci_iterative(1000) }


assert { fibonacci_recursive(5) }
assert { fibonacci_recursive(8) }
assert { fibonacci_recursive(0) }
assert { fibonacci_recursive(1) }
assert { fibonacci_recursive(1000) }
