a = 10001

n = 11 ** 5

arr = Array.new(n, true)
arr[0] = false # 0 not prime

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

if(a > arr.length)
    puts "need more numbers, current length: #{arr.length}"
else 
    puts arr[a]
end