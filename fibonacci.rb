def fibonacci(n)
  fib_array = [0, 1]
  n.times { fib_array << fib_array[-1] + fib_array[-2] }
  fib_array[n-1]
end

p fibonacci(5) #=> 3
