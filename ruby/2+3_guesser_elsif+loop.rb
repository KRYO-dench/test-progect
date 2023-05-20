loop do
    random_number = (rand *10).to_i + 1

    puts "Я загадав число от 1 до 10. Спробуй здогадатись..."

    # puts random_number

    guess = gets.to_i
    if guess == random_number
        puts "Чудово, ти вгадав!!!"
        break
    elsif guess < random_number
        puts "Моє число більше, ніж твій здогад. Спробуй ще;)"
    else guess > random_number
        puts "Моє число меньше, ніж твій здогад. Спробуй ще;)"
    end
end