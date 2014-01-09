def fibonacci_iterative(n)
	return 0 if n == 1
	fib = [0,1]
	ammount = n-2
	ammount.times{
		nextfib = fib[-1] + fib[-2]
		fib << nextfib
	}
	fib[-1]
end

def fibonacci_recursive(n)
	fib = [0,1]
    if n==1 || n==2
    	return 1
    else
    	if n > 1
	  fibonacci_recursive(n - 1) + fibonacci_recursive(n - 2)
        end
   end
end


p fibonacci_iterative(4) == 2
p fibonacci_iterative(9) == 21
p fibonacci_iterative(1) == 0
p fibonacci_iterative(2) == 1
p fibonacci_iterative(16) == 610

p fibonacci_recursive(3) == 2
p fibonacci_recursive(8) == 21
p fibonacci_recursive(1) == 1
p fibonacci_recursive(2) == 1
p fibonacci_recursive(15) == 610