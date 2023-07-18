require 'yaml'

a_code = 'A'.ord
correct_answers = 0
incorrect_answers = 0

puts "Назвіть себе:"
name = gets.strip

current_time = Time.now.strftime('%H-%M_%d-%m-%y')

file_name = "6_QUIZE_#{name}_#{current_time}.txt"

File.write(
  file_name,
  "Результат відповідей користувача #{name}\n\n#{current_time}",
  mode: 'a' #відкрити файл тільки для запису та додати запис в кінць файла!!!
)

#Беремо по черзі питання та пропонуємо 4 видповіді
all_questions = YAML.safe_load_file('questions_for_6.yml', symbolize_names: true)
# puts all_questions.inspect

all_questions.shuffle.each do |question_data|

  formatted_question = "\n\n=== #{question_data[:question]} ===\n\n"
  puts formatted_question

  File.write(
  file_name,
  formatted_question,
  mode: 'a' #відкрити файл тільки для запису та додати запис в кінць файла!!!
)

  #тут зберігається не букву відповіді, а саме текст відповіді
  correct_answer = question_data[:answers].first

  answers = question_data[:answers].shuffle.each_with_index.inject({}) do |result, (answer, i)|
    answer_char = (a_code + i).chr #отримуємо букву
    result[answer_char] = answer

    puts "#{answer_char}. #{answer}"

    result #зберігає поточний хеш та вже працює далі з ним на наступній
    #ітерациії та дописує саме в нього, а не створює новий пустий хеш
  end

  user_answer_char = nil
  
  loop do #цикл який запитує корректний ввод з клавіатури
    puts "Введіть вірну відповідь: "
    user_answer_char = gets.strip[0].upcase
    if user_answer_char.between?('A', 'D')
      break
    else
      puts "Вкажіть існуючу букву A - D"
    end  
  end

  File.write(
  file_name,
  "Відповідь користувача: #{answers[user_answer_char]}\n\n",
  mode: 'a' #відкрити файл тільки для запису та додати запис в кінць файла!!!
    )

  #Порівнюємо відповідь з клавіатури з вірною відповідью
  if answers[user_answer_char] == correct_answer
    puts "Вірна відповідь!"
    correct_answers = correct_answers + 1
    
    File.write(
    file_name,
    "Вірна відповідь! - #{correct_answer}.",
    mode: 'a' #відкрити файл тільки для запису та додати запис в кінць файла!!!
    )
    
  else
    puts "Відповідь помилкова..."
    puts "Вірна відповідь: #{correct_answer}."
    incorrect_answers = incorrect_answers + 1

    File.write(
    file_name,
    "Відповідь помилкова. Вірна відповідь: #{correct_answer}.\n\n",
    mode: 'a' 
    )
  end
end

File.write(
file_name,
"\n\nВірних відповідей: #{correct_answers}\n\n",
mode: 'a' 
)

File.write(
file_name,
"Помилкових відповідей: #{incorrect_answers}\n\n",
mode: 'a' 
)
correct_answer_percentage = (correct_answers / all_questions.length.to_f) * 100

File.write(
file_name,
"\n\nВідсоток вірних відповідей: #{correct_answer_percentage.floor(2)}%\n\n",
mode: 'a' 
)
incorrect_answer_percentage = (incorrect_answers / all_questions.length.to_f) * 100

File.write(
file_name,
"Відсоток помилкових відповідей: #{incorrect_answer_percentage.floor(2)}%",
mode: 'a' 
)

