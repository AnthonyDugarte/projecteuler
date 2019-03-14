seed = [1, 2]
seed.push(seed.last(2).reduce(:+)) while seed.last(2).reduce(:+) <= 4 * 10**6

puts seed.select(&:even?).reduce(:+)