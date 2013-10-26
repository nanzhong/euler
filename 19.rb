require 'date'

count = 0
1901.upto(2000) do |year|
  1.upto(12) do |month|
    count += 1 if Date.new(year, month, 1).sunday?
  end
end
puts count
