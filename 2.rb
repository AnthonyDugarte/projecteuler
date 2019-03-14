seed = [1, 2]

while seed.last(2).reduce(:+) <= 4 * 10**6 do
    seed.push(seed.last(2).reduce(:+))
end

puts seed.select(&:even?).reduce(:+)