max = 0

100.upto(999) do |i|
    100.upto(999) do |j|
        temp = i * j

        max = temp if temp.eql?(temp.to_s.reverse.to_i) && temp > max
    end
end

puts max