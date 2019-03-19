require 'set'

n = 10 ** 6

arr = Array.new(n, true)
arr[0] = false # 0 not prime
arr[1] = false # 1 not prime

i, o = [1, Math.sqrt(n)];
while i < o do
    i += 1
    next if !arr[i]
    
    j = i << 1
    while j < n do
        arr[j] = false
        j += i
    end
end

arr.map!.each_with_index{|x, i| i if x}.compact!

arr = arr.to_set

puts arr.select{ |x| 
    arr2 = x.to_s.split("").map(&:to_i)
    
    x.to_s.length == 1 ? false : (1..x.to_s.length).all?{ |y|
        arr.include?(arr2.first(y).join.to_i) && arr.include?(arr2.last(y).join.to_i)
    }
}.reduce(:+)