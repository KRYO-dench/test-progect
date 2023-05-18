animals = ["dog", "cat", "mouse"]
animals.each.with_index do |animal, current_index|
  puts "Next animal: "
  puts animal
  puts current_index
end