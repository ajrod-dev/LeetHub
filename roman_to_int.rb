def roman_to_int(s)
   values = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

    answer = 0
    prior_v = 0
    reversed_s = s.reverse


    reversed_s.each_char do |char|
        val = values[char]

        if val < prior_v
            answer -= val
        else
            answer += val
        end
        prior_v = val
    end
    answer
end

puts roman_to_int('XVIII')