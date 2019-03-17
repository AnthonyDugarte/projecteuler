i, fibs, digs = [2, [1, 1], 1000]

while fibs.last.to_s.length < digs do
    i += 1
    fibs = [fibs.last, fibs.last + fibs.first];
end

puts i