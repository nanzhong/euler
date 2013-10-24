require 'prime'

total_factors = {}
(1..20).each do |i|
  pf = Prime.prime_division(i)
  puts pf.inspect
  pf.each do |fact|
    if total_factors[fact[0]].nil?
      total_factors[fact[0]] = fact[1]
    else
      total_factors[fact[0]] = [fact[1], total_factors[fact[0]]].max
    end
  end
end

puts total_factors.inspect

product = 1
total_factors.each do |f, n|
  product *= f ** n
end

puts product
