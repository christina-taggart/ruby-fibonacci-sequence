def fibonacci_iterative(n)
  fib_old, fib_new = 0, 1
  (n - 2).times do
    fib_old, fib_new = fib_new, fib_old + fib_new
  end
  return fib_new
end

def fibonacci_recursive(n)
  if n == 2 || n == 3
    1
  elsif n == 1
    0
  else
    fibonacci_recursive(n - 2) + fibonacci_recursive(n - 1)
  end
end

p fibonacci_iterative(3) #== 1
p fibonacci_iterative(6) #== 5

p fibonacci_recursive(9) == 21
p fibonacci_recursive(1) == 0