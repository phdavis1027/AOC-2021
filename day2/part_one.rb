require 'ostruct'

FILE_NAME = "input.txt"

directions = Hash.new nil 
directions['forward'] = OpenStruct.new 'dir' => 'hor', 'val' => 1
directions['down']    = OpenStruct.new 'dir' => 'vert', 'val' => 1 
directions['up']      = OpenStruct.new 'dir' => 'vert', 'val' => -1

answers = Hash.new 0
answers['hor'] = 0
answers['vert'] = 0

File.readlines(FILE_NAME).each do |line|
    mov, amt = line.split
    answers[directions[mov]['dir']] += directions[mov]['val'] * amt.to_i
end 

puts answers['hor'] * answers['vert']