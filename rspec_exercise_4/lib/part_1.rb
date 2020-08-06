 require "byebug"
 
 def my_reject(arr, &prc)
    new_arr = []
    arr.each do |ele|
      if !prc.call(ele)
         new_arr << ele 
      end
   end
   new_arr
 end

 def my_one?(arr, &prc)
    count = 0
    arr.each do |ele|
        
        if prc.call(ele)
            count += 1
        end
        
    end
    if(count == 1)
        return true
    else
        return false
    end
 end

 def hash_select(hash, &prc)
    new_hash = Hash.new(0)

   hash.each do |k,v|
      if prc.call(k,v)
         new_hash[k] = v
      end
   end
   new_hash
 end

def xor_select(arr, prc1, prc2)
    new_arr = []
    arr.each do |ele|
        if !(prc1.call(ele) && prc2.call(ele))  #not true for both
            if prc1.call(ele) || prc2.call(ele) #only if one is true
                new_arr << ele
            end
        end
    end
    new_arr

end

def proc_count(val, arr)
    count = 0
    arr.each do |proc|
        if proc.call(val)
            count += 1
        end
    end

    count
end

