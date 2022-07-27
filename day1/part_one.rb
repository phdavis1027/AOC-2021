FILE_NAME = "input.txt"
input = File.read(FILE_NAME)
input_split = input.split
num_increases = 0
for i in 1...input_split.size do
    first = input_split[i - 1]
    second = input_split[i] 
    num_increases += second.to_i > first.to_i ? 1 : 0
end
puts num_increases