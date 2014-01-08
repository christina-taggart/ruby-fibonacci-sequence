def fibonacci_iterative(n)
  first = 0
  second = 1
  n = n - 2
  if n == 0
    return first
  else
    while n > 0
      fib = first + second
      first = second
      second = fib
      n -= 1
    end
  end
  return fib
end

#p fibonacci_iterative(7) == 8

def fibonacci_recursive(n)
  if n == 0
    0
  elsif n <= 1
    1
  else
    fib = fibonacci_recursive(n-1) + fibonacci_recursive(n-2)
  end
end

p fibonacci_recursive(7)