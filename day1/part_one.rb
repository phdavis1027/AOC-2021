file_name = "input.txt"
input = File.read(file_name)
input_split = input.split
num_increases = 0
for i in 1...input_split.size do
    first = input_split[i - 1]
    second = input_split[i] 
    num_increases += second > first ? 1 : 0
end
puts num_increases