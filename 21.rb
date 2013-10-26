divisors = []
1.upto(10000) do |i|
  i_divisors = []
  d = 1
  max = i
  while d < max
    if i % d == 0
      i_divisors << d
      i_divisors << i / d if (i / d) < i
      max = i / d
    end
    d += 1
  end

  divisors[i] = i_divisors.uniq
end

skip = []
sum = 0
divisors.each_with_index do |d, i|
  next if i == 0
  next if skip.include? i

  d_sum = d.reduce(0) { |s, n| s + n }

  if d_sum < 10000 && d_sum != i
    if divisors[d_sum] && divisors[d_sum].reduce(0) { |s, n| s + n } == i
      sum += i + d_sum
      skip << d_sum
    end
  end
end
puts sum
