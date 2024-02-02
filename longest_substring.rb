def longest_substring(s)
    return 0 if s.nil? || s.empty?

    i = 0
    max_length = 0
    str = ""
    results = {}

    while i < s.length
        char = s[i]
        if str.include?(char)
            max_length = [max_length, str.length].max
            str = str[str.index(char) + 1..-1]
        end
        str += char
        i += 1
    end

    max_length = [max_length, str.length].max  # Update max_length after the loop completes
end

puts longest_substring("dvdf")  


