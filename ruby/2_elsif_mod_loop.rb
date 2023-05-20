puts "Введіть свій вік:"
age = gets.to_i

puts "Вкажіть свою краіну: 
1 - якщо Ви з США або Японії
2 - якщо ні"
country = gets.strip
loop do
    if country == 1.to_s
        country = "Японія"
        break
    elsif country == 2.to_s
        country = "Інша країна"
        break
    else country !=1 || country !=2
        puts "Не вірне значення. Ведіть 1 або 2"
        country = gets.strip
    end
end

# puts country.inspect
#"Частина-2"

if (country == "Японія" || country == "США") && age>=21
    puts "Вітаю, переходь до наступного кроку"
elsif age >= 18
    puts "Доступ відкрит, але не для Японії та США"    
else
    puts "Перепрошую цей сайт не для вас;("
end

#Або можна скоротити умову "частина-2"

# if age >= 21 || (age >= 18 && country != 1)
#     puts "Доступ відкрит"
# else
#     puts "Перепрошую цей сайт не для вас;("
# end

