require 'prime'

palindromes = []
(100..999).to_a.reverse.each do |a|
  (100..a).to_a.reverse.each do |b|
    # palindrome must have a prime factor of 11... but ruby's prime_division is slow... faster to not use prime_division
    # next unless Prime.prime_division(a).flatten.include?(11) || Prime.prime_division(b).flatten.include?(11)

    product = a * b
    product_s = product.to_s

    palindrome = true
    index = 0
    mid = product_s.length / 2
    while index <= mid
      palindrome = false if product_s[index] != product_s[-1 - index]
      index += 1
    end
    if palindrome
      palindromes << product
    end
  end
end

puts palindromes.max
