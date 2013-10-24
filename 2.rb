sum = 2
last = 2
fib = [1, 2]

loop do
  last = fib[-1] + fib[-2]
  break if last > 4000000
  fib << last
  sum += last if last % 2 == 0
end

puts sum
