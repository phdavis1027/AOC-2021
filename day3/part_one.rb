FILE_NAME = 'input.txt'
OTHER_FILE = 'sample.txt'
gamma = ''
epsilon = ''
bits = Hash.new 0
lines = File.readlines(FILE_NAME)
line_len = lines[0].gsub(/\n/, '').length

for bit in 0...line_len do
    bits[bit] = Array.new 2
    bits[bit][0] = bits[bit][1] = 0 
end

lines.each do |line|
    line = line.gsub(/\n/, '')
    for bit in 0...line_len do 
        bit_val = line[bit].to_i
        bits[bit][bit_val] += 1
    end 
end

for i in 0...line_len do
    to_add = bits[i][0] > bits[i][1] ? '0' : '1'
    gamma += to_add
    to_add = bits[i][0] < bits[i][1] ? '0' : '1'
    epsilon += to_add
end

gamma = gamma.to_i(2)
epsilon = epsilon.to_i(2)

puts gamma * epsilon