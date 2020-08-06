 require "byebug"

 def proper_factors(num)
    arr = []
    (1...num).each do |factor|
        if num % factor == 0
            arr << factor
        end
    end

    arr

 end

 def aliquot_sum(num)
    return proper_factors(num).sum
 end

 def perfect_number?(num)
    return aliquot_sum(num) == num
 end
 #aliquot_sum(num) == num ? 1:0

 def ideal_numbers(number)
    new_arr = []
    count = 0
    i = 6
    while count != number
        if perfect_number?(i)
            new_arr << i  
            count += 1
        end
        i+=1
    end
    new_arr
 end