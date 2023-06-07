countries = [
    'Украина',
    'Канада',
    'Великобритания',
    'Китай',
    'Норвегия'
]

capitals = [
    'Київ',
    'Оттава',
    'Лондон',
    'Пекін',
    'Осло'
]

countries.each.with_index do |country, index|
    puts "Країна #{country}..."

    user_input = gets.strip.downcase

    if user_input == capitals[index].downcase
      puts "Відповідь вірна"
    else
      puts "Помілкова відповідь!"
      puts "Повинно бути: #{capitals[index]}."
    end
end