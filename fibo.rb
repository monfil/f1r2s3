
require 'benchmark'
def fibonacci_iterative(n)
  prev_e = 0
  next_e = 1
  if n == 0
    f = 0
  elsif n == 1 || n == 2
    f = 1
  else
    for i in 2..n
      f = prev_e + next_e
      prev_e = next_e
      next_e = f
    end
  end
  f
end

def fibonacci_recursive(n)
  if n == 1 || n == 2
    1
  elsif n == 0
    0
  else   
    fibonacci_recursive(n - 1) + fibonacci_recursive(n - 2)
  end
end

iterations = 1000

p fibonacci_iterative(0) == 0
p fibonacci_iterative(1) == 1
p fibonacci_iterative(2) == 1
p fibonacci_iterative(3) == 2
p fibonacci_iterative(4) == 3

Benchmark.bm do |bm|
  bm.report do
    iterations.times do
      fibonacci_iterative(10)
      "The current time is #{Time.now}"
    end
  end
end

p fibonacci_recursive(0) == 0
p fibonacci_recursive(1) == 1
p fibonacci_recursive(2) == 1
p fibonacci_recursive(3) == 2
p fibonacci_recursive(4) == 3
p fibonacci_recursive(5) == 5

Benchmark.bm do |bm|
  bm.report do
    iterations.times do
      fibonacci_recursive(10)
      "The current time is #{Time.now}"
    end
  end
end