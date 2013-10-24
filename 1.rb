puts (1...1000).reduce(0) { |sum, i| (i % 3 == 0 || i % 5 == 0) ? sum + i : sum }
