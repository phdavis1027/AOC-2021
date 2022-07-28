FILE_NAME = "input.txt"
aim = 0
hor = 0
vert = 0 
File.readlines(FILE_NAME).each do |line|
    mov, amt = line.split
    case mov
    when 'forward'
        speed = amt.to_i
        hor += speed  
        vert += aim * speed 
    when 'down'
        aim += amt.to_i
    when 'up'
        aim -= amt.to_i
    else 
        raise "BAD INPUT"
    end 
end 

puts hor * vert