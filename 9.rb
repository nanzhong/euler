(1..1000).each do |a|
  (1..(1000 - a)).each do |b|
    c = 1000 - a - b
    puts "a: #{a} b: #{b} c: #{c} abc: #{a*b*c}" if a ** 2 + b ** 2 == c ** 2
  end
end

