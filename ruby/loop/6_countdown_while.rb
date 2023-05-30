x = gets.chomp.to_i
while x >= 0
  puts x
  # x = x - 1 длинная запись следующей строки
  x -= 1
end

puts "Done!"

x = gets.chomp.to_i
# x = 0 
while x < 5
  y = x * x
  x += 1
  # puts x
end

puts y
