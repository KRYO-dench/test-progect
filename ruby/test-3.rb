puts "Введіть свій вік:"
age = gets.to_i

puts "Вкажіть свою краіну:"
country = gets.strip

# puts country.inspect

if (country == "Япония" || country == "США") && age>=21
    puts "Вітаю, переходь до наступного кроку"
elsif age >= 18
    puts "Доступ відкрит, але не для Японії та США"    
else
    puts "Перепрошую цей сайт не для вас;("
end

