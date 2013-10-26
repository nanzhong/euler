sequence = Hash.new(0)

1.upto(1000000) do |i|
  n = i
  while n > 1
    if sequence[n] > 0
      sequence[i] += sequence[n]
      break
    end

    if n % 2 == 0
      sequence[i] += 1
      n = n / 2
    else
      sequence[i] += 1
      n = 3 * n + 1
    end
  end
end

puts sequence.max_by { |k, v| v }
