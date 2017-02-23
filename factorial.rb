def factorial_iterative(num)
  i = 1
  f = 1
  if num == 0
    f
  else
    while i <= num
      f = f * i
      i += 1
    end
    f
  end
end

def factorial_recursive(num)
  if num == 0
    1
  else
    factorial_recursive(num - 1) * num
  end
end

p factorial_iterative(5) == 120
p factorial_iterative(4) == 24
p factorial_iterative(0) == 1
p factorial_iterative(1) == 1
p factorial_iterative(6) == 720

p factorial_recursive(5) == 120
p factorial_recursive(4) == 24
p factorial_recursive(0) == 1
p factorial_recursive(1) == 1
p factorial_recursive(6) == 720