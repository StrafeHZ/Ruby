ary = [2, 8, 9, 48, 8, 22, -12, 2]
p ary
ary = [2, 8, 9, 48, 8, 22, -12, 2]
pig = ary.uniq
result = pig.select do |dog|
	    dog > 5
end

cat = result.map {|x| x + 2}
p cat
