file_name = "input.txt"
input = File.read(file_name)
input_split = input.split
num_increases = 0


for i in 2...input_split.size do
    first_window_sum = 0
    second_window_sum = 0

    first_window = input_split.slice(i - 2, 3)
    second_window = input_split.slice(i - 1, 3)

    first_window.each{ |str| first_window_sum += str.to_i }
    second_window.each { |str| second_window_sum += str.to_i }

    num_increases += first_window_sum < second_window_sum ? 1 : 0
end
puts num_increases