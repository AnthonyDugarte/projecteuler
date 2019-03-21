puts (1..10 ** 3).reduce{ |memo, x| 
    memo + x ** x
}.to_s.chars.last(10).join