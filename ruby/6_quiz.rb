require 'yaml'

a_code = 'A'.ord

# puts "Назвіть себе:"
# name = gets.strip

all_questions = YAML.safe_load_file('questions_for_6.yml', symbolize_names: true)
puts all_questions.inspect

all_questions.shuffle.each do |question_data|
  puts "\n\n=== #{question_data[:question]} ==="

  correct_answer = question_data[:answers].first

  answers = question_data[:answers].shuffle.each_with_index.inspect({}) do |result, (answer, i)|
    answer_char = (a_code + i).chr
  end
end