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

result_1 = countries.zip capitals
result_2 = capitals.zip countries
puts result_1.to_h.inspect  
puts result_2.to_h.inspect  