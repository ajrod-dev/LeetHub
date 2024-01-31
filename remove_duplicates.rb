def remove_duplicates(nums)
	if nums.empty?
		return 0
	end
	k = 1
	nums.each_with_index do |num, idx|
		next if idx.zero?
		if nums[idx] != nums[idx - 1]
			nums[k] = nums[idx]
			k += 1
		end
	end
	k

end

puts remove_duplicates([0,0,1,1,1,2,2,3,3,4])