def fib_tail(num1, num2, fib_index)
	if fib_index == 1
	  num2
	elsif fib_index == 2
	  num1
	else
	  fib_tail(num1 + num2, num1, fib_index-1)
	end
end

def fibonacci_recursive(n)
	fib_tail(1,1,n)
end

def fibonacci_iterative(n)
	start = [0,1]
	(n-1).times { start << start[-1] + start[-2] }
	start.last
end

p fibonacci_recursive(10) == 55
p fibonacci_iterative(10) == 55
