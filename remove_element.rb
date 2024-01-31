def remove_element(nums, val)
    k = 0
    nums.each do |num|
    	if num != val
    		nums[k] = num
    		k += 1
    		
    	end
    end
    k
end

puts remove_element([], 0)