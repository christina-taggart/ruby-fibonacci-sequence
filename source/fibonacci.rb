def fibonacci_iterative(n)
  fib = [0, 1]
  fib[fib.length] = fib[fib.length-1] + fib[fib.length-2] until fib[n] != nil
  fib[n]
end

def fibonacci_recursive(n)
end

# Driver Code
p fibonacci_iterative(5) == 5
p fibonacci_iterative(3) == 2
p fibonacci_iterative(0) == 0
p fibonacci_iterative(1) == 1