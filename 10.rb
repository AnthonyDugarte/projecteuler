n = 12 ** 6

arr = Array.new(n, true)
arr[0] = false # 0 not prime
arr[1] = false

i, o = [1, Math.sqrt(n)];
while i < o do
    i += 1
    next if !arr[i]
    
    j = i ** 2
    while j < n do
        arr[j] = false
        j += i
    end
end

arr.map!.each_with_index{|x, i| i if x}.compact!

puts arr.select{|x| x < 2 * 10 ** 6}.reduce(:+)