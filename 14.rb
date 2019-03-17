def f n
  n.even? ? n >> 1 : 3 * n + 1
end

i, max, max_val = [1, 1, 1]

while i <= 10 ** 6 do
    val = i.clone

    tmp_max = 1
    while !val.eql?(1) do
        val = f val
        tmp_max += 1
    end

    if tmp_max > max
        max = tmp_max.clone
        max_val = i.clone
    end

    i += 1
end

puts "#{max_val} with #{max}"