
###psuedo code
#fib(n) =
  # 0 if n = 0 
  # 1 if n = 1 
  # fib(n-1) + fib(n-2) otherwise
  	


#input: fib number output: place in sequence
# decide if the number is greater than zero
#if it is, then def fibonacci_iterative(number)
#starting point is [0,1]
#add those two numbers to make the next number--> [0, 1, 1]
#do until the length is equal to n




def fib_iterative(n)
	fib = []
	previous = 0
	current = 1
	if n > 0
		current.upto(n-1) do
		previous, current = current, current + previous
		fib.push (current)
		end
		p current
	else
		p 0
	end
end

###pseudo code
#until place is equal to n
#make the fib sequence
#once it hits n, print fib number



def fibonacci_recursive(n)
	if n == 0
		0
	elsif n == 1
		1
	else
		fibonacci_recursive(n -1) + fibonacci_recursive(n - 2)
	end 

end


### driver code
puts fib_iterative(0) == 0
puts fib_iterative(2) == 1
puts fib_iterative(3) == 2
puts fib_iterative(4) == 3
puts fib_iterative(5) == 5


p fibonacci_recursive(0) == 0
p fibonacci_recursive(1) == 1
p fibonacci_recursive(2) == 1
p fibonacci_recursive(3) == 2
p fibonacci_recursive(4) == 3
p fibonacci_recursive(5) == 5