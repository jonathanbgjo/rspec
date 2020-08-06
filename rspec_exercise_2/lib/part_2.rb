def palindrome?(str)
    (0..str.length / 2).each do |i|
        if str[i] != str[str.length - i - 1]
            return false
        end
    end

    true
end


def substrings(str)
    new_arr = [] 
    new_str = ""
    (0...str.length).each do |i| 
        (i...str.length).each do |k|
            new_str += str[k]
            new_arr << new_str
        end
        new_str = ""
    end

    new_arr
end

def palindrome_substrings(str)
    sub_str = substrings(str)
    are_palindromes = []
    
    sub_str.each do |word|
        if word.length > 1 && palindrome?(word)
            are_palindromes << word
        end
    end

    are_palindromes
end