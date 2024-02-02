def create_arrays(num_rows)
    arrays = []
    num_rows.times do 
        arrays << []
    end
    arrays
end

def convert(s, num_rows)
    return s if num_rows <= 1
    arrays = create_arrays(num_rows)
    row = 0
    col = 0
    dir = 1 
    s.each_char do |char|
        arrays[row][col] = char
        row += dir
        if row == 0 || row == (num_rows - 1)
            dir *= -1
        end
        col += 1
    end      
    arrays.flatten!.join('')
end



result = convert("AB", 1)
puts result.inspect
