words = %w(first second thrid fourth fifth sixth)
#solution 1
words.map! do |word|
	word. reverse
end

puts words.reverse


#solution 2
words.each do |word|
	word.reverse! #you need exclamation mark here
end

puts words.reverse

#solution 3

words.each do |word|
	word.reverse!
end
words = words.reverse

puts words
