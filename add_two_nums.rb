def add_two_numbers(l1, l2)
    first = []
    second = []
    for i in l1
        first.unshift(i)
    end
    for i in l2
        second.unshift(i)
    end
    sum = (first.join.to_i + second.join.to_i).to_s.chars.map(&:to_i).reverse
end

puts add_two_numbers([9,9,9,9,9,9,9], [9,9,9,9])