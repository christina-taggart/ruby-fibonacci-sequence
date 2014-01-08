def fibonacci_iterative(n)
  fib_seq = []
  0.upto(n) do |i|
    if i == 0
      fib_seq[i] = 0
    elsif i==1
      fib_seq[i] = 1
    else
      fib_seq[i] = fib_seq[i-1] + fib_seq[i-2]
    end
  end
end

p fibonacci_iterative(0)



  # fib_seq = [0,1]
  # while i <= n
  #   fib_seq << i
  #   i += fib_seq[-2]
  #   #[0,1,1,2,3,5]

def fibonacci_recursive(n)
  fib_seq = []
  if n == 0
    fib_seq[n] = 0
  elsif n==1
   fib_seq[n] = 1
  else
   fibonacci_recursive(n-1) + fibonacci_recursive(n-2)
  end
end

p fibonacci_recursive(5)
p fibonacci_recursive(4)
