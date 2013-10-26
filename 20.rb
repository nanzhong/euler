digits = [0, 0, 1]
99.downto(2) do |n|
  digits = digits.map { |d| d * n }

  i = 0
  while i < digits.length
    if digits[i] >= 10
      extra = digits[i] / 10
      digits[i] = digits[i] % 10
      extra.to_s.reverse.split('').each_with_index do |c, j|
        digits[i+1+j] ||= 0
        digits[i+1+j] += c.to_i
      end
    end
    i += 1
  end
end

puts digits.reduce(:+)
