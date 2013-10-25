last = 0
i = 1

loop do
  next_num = last + i

  d = 1
  max = next_num
  count = 0
  while d < max
    if next_num % d == 0
      count += 2
      max = next_num / d
    end

    d += 1
  end

  if count >= 500
    puts next_num
  end

  last = next_num
  i += 1
end
