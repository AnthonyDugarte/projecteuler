val, max = [600851475143, 2]

val = val.div(2) while val.modulo(2).zero?

i, n = [3, Math.sqrt(val)]
while i <= n do
    max = i if val.modulo(i).zero?

    val = val.div(i) while val.modulo(i).zero?
    break if val.eql?(1)

    i += 2
end

puts max