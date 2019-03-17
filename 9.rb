args = [3, 4, 5]
arr = [3, 4, 5]
lim = 1000

while true do
    puts arr.to_s if arr.first(2).map{|x| x ** 2}.reduce(:+).eql? arr.last ** 2

    arr[0] += 1

    if arr.first(2).reduce(:==)
        arr[0] = args[0]
        arr[1] += 1
    end

    if arr.last(2).reduce(:==)
        arr[0] = args[0]
        arr[1] = args[1]
        arr[2] += 1
    end
    
    if arr.first(2).map{|x| x ** 2}.reduce(:+).eql? arr.last ** 2
        break if arr.reduce(:+) == lim
    end

    break if arr.last > lim
end

puts arr.to_s
puts arr.reduce(:*)