date = {
  Україна: "Київ",
  Канада: "Оттава",
  Великобритания: "Лондон",
  Китай: "Пекін",
  Норвегия: "Осло"
}

date.each do |country, capital|
    puts "Країна #{country}..."

    user_input = gets.strip.downcase

    if user_input == capital.downcase
      puts "Відповідь вірна ;)"
      puts "__________________________"
    else
      puts "Помілкова відповідь!"
      puts "Повинно бути: #{capital}."
      puts "__________________________"
    end
end