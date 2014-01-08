def fibonacci_iterative(n)
	return 0 if n == 0
	return 1 if n == 1
	fib_seq = [0,1]
	(n-1).times do fib_seq << fib_seq[-2] + fib_seq[-1] end
	fib_seq.last
end

def fibonacci_recursive(n)
end

p fibonacci_iterative(0) == 0
p fibonacci_iterative(1) == 1
p fibonacci_iterative(2) == 1
p fibonacci_iterative(3) == 2
p fibonacci_iterative(4) == 3
p fibonacci_iterative(5) == 5

p fibonacci_recursive(0) == 0
p fibonacci_recursive(1) == 1
p fibonacci_recursive(2) == 1
p fibonacci_recursive(3) == 2
p fibonacci_recursive(4) == 3
p fibonacci_recursive(5) == 5