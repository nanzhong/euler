digits = [
  'one',
  'two',
  'three',
  'four',
  'five',
  'six',
  'seven',
  'eight',
  'nine'
]
first_ten = [
  'ten',
  'eleven',
  'twelve',
  'thirteen',
  'fourteen',
  'fifteen',
  'sixteen',
  'seventeen',
  'eighteen',
  'nineteen'
]
tens = [
  'twenty',
  'thrity',
  'forty',
  'fifty',
  'sixty',
  'seventy',
  'eighty',
  'ninety'
]

# Clearly the faster way would be to calculate the length numerically, but since
# it's only up to 1000, this way is much clearer, and the difference in absolute
# runtime is not very different

words = []
words += digits
words += first_ten
tens.each do |word|
  words << word
  digits.each do |digit|
    words << "#{word} #{digit}"
  end
end

1.upto(9) do |i|
  words << "#{digits[i-1]} hundred"

  digits.each do |d|
    words << "#{digits[i-1]} hundred and #{d}"
  end

  first_ten.each do |t|
    words << "#{digits[i-1]} hundred and #{t}"
  end

  tens.each do |t|
    words << "#{digits[i-1]} hundred and #{t}"
    digits.each do |d|
      words << "#{digits[i-1]} hundred and #{t} #{d}"
    end
  end
end
words << 'one thousand'

puts words.join.gsub(/\s+/, '').length
