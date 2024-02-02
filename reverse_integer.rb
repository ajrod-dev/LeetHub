def reverse(x)
    
    result = 0
    arr = []
    x.to_s.each_char do |num|
    	arr.unshift(num)
    end
    result = arr.join('').to_i
    if (result <= -2147483649 || result >= 2147483647)
    	return 0
    elsif x < 0
    	result *= -1
    else
    	result
    end
    result
end

puts reverse(-123)