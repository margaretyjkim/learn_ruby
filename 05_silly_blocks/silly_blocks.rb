def reverser
	split = yield.split.map { |word| word.reverse }
	split.join(" ")
end

def adder
	num = yield(num) + 1
end