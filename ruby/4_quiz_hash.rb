date = {
  Україна: "Київ",
  Канада: "Оттава",
  Великобританія: "Лондон",
  Китай: "Пекін",
  Норвегія: "Осло"
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