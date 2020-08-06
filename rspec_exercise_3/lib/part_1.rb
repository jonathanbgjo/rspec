require "byebug"

def is_prime?(num)
    if num < 2
        return false
    end
    (2...num).each do |factor| 
        if num % factor == 0
            return false
        end
    end
    return true
end

def nth_prime(n)
    return nil if n < 1
    count = 0
    i = 2
    while count != n 
        if is_prime?(i)
            count += 1
            if count == n
                return i 
            end
        end
        i += 1
    end
end

def prime_range(min, max)
    arr = []
    (min..max).each do |factor|
        if is_prime?(factor)
            arr << factor
        end
    end
    return arr
end