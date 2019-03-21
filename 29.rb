arr = []

2.upto(100){ |a| 2.upto(100){ |b| arr.push(a ** b) } }

puts arr.uniq.length