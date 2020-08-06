require "byebug"

def partition(array, num)
    #new_arr = Array.new(2) { Array.new(1) }
    new_arr = [[],[]]

    array.each do |el|
        if el < num
            new_arr[0] << el
        else
            new_arr[1] << el
        end
    end

    new_arr
end


def merge(hash_1, hash_2)
    new_hash = Hash.new(0)
    hash_1.each do |k,v| 
        new_hash[k] = v
    end
    hash_2.each do |k,v|
        new_hash[k] = v
    end 
    
    new_hash
end

def censor(sentence, curse_words)
    words = sentence.split
    new_sen = []

    words.each do |word|
        if curse_words.include?(word.downcase)
            new_sen << replace_vowel(word)
        else
            new_sen << word
        end
    end

    new_sen.join(" ")
end

def replace_vowel(word)
    vowels = "aeiouAEIOU"
    new_word = ""

    word.each_char do |char|
        if vowels.include?(char)
            new_word += "*"
        else
            new_word += char
        end
    end

    new_word
end


def power_of_two?(num)
    if Math.log2(num)%1 == 0
        return true
    else
        return false
    end
end