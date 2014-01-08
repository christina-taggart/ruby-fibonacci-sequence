def fibonacci_iterative(n)
  one_previous = 0
  two_previous = 1
  if n<=1
    return n
  end
  (n-1).times do
    current_num = two_previous
    two_previous += one_previous
    one_previous = current_num
  end
   two_previous
end

def fibonacci_recursive(n)
  if n <= 1
    n
  else
    fibonacci_recursive(n-1)+fibonacci_recursive(n-2)
  end
end





p fibonacci_iterative(0)==0
p fibonacci_iterative(1)==1
p fibonacci_iterative(2)==1
p fibonacci_iterative(6)!=2739
p fibonacci_iterative(4)==3
p fibonacci_iterative(10)==55

p fibonacci_recursive(0)==0
p fibonacci_recursive(1)==1
p fibonacci_recursive(2)==1
p fibonacci_recursive(6)!=2739
p fibonacci_recursive(4)==3
p fibonacci_recursive(10)==55