require 'prime'

sum = 0
Prime.each do |i|
  break if i >= 2000000
  sum += i
end
puts sum
