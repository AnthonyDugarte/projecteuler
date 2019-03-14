n = 100

# both puts are equal, well... not that equal
puts (n * (n + 1) / 2) ** 2 - n * (n + 1) * (2 * n + 1) / 6
puts (1..n).reduce(:+) ** 2 - (1..n).collect{|a| a ** 2 }.reduce(:+)