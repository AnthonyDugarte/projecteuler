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

set = arr.to_set

puts set.select{ |x|
    arr2 = x.to_s.split("").map(&:to_i)

    (0...x.to_s.length).all?{ |y|
        set.include?((arr2.last(x.to_s.length - y).join + arr2.first(y).join).to_i)
    }
}.length