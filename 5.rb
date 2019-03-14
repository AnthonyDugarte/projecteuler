puts (1..20).map{ |val|
    counts = Hash.new(0)
    
    while val.modulo(2).zero? do
        counts[2] += 1
        val /= 2
    end

    i, n = [3, Math.sqrt(val)]
    while i <= n do

        while val.modulo(i).zero? do
            counts[i] += 1
            val /= i
        end

        i += 2
    end

    counts[val] += 1 if !val.eql?(1)

    counts
}.reduce{ |memo, h|
    memo.merge(h){ |k, v1, v2|
        [v1, v2].max
    }
}.each_pair.reduce(1){ |memo, p|
    memo * p.reduce(:**)
}