puts (2**1000).to_s.split('').reduce(0) { |s, c| s + c.to_i }
