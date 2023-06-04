# degreeses = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] незручно створювати
# або керованний масив
# degreeses = Array.new(10) {|array_element| array_element + 1}
# або упорядкований масив
degreeses = (1..10).to_a
degreeses.each do |degree|
    puts "#{degree} --> #{degree ** 2}"
end