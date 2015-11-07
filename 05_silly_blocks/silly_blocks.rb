def reverser
	words = yield
	word_array = words.split(" ")
	word_array.each { |word| word.reverse! }
	word_array.join(" ")
end

def adder(number = 1)
	number + yield
end

def repeater(number = 1)
	number.times do
		yield
	end

end