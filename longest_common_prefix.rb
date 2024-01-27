def longest_common_prefix(strs)
    result = ""
    beg = 0
    final = 0
    flag = true
    prefix = strs[0][beg..final]

    while flag
	    strs.each do |word|
	      flag = word.include?(prefix)
	      break unless flag
	    end

	    break unless flag

	    result = prefix
	    final += 1
	    prefix = strs[0][beg..final]

  	end	
    result

end

puts longest_common_prefix(['hello','hemingway'])