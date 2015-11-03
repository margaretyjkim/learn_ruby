def translate(word)
#if it starts with vowel, add "ay" at the end
vowel = ["a", "e", "i", "o", "u"]
word = word.split('')
if vowel.include? word[0]
	word.join + "ay"

#if it starts with consonant, move the consonant to the end of the word, then add ay
else

	until(vowel.include?(word[0]))
		word.rotate!
	end
	return word.join + "ay"
	end
end

# def translate(words)
# 	words.split.map do |word|
# 	  translate_word(word)
# 	end.join(' ')
# end
#keep this code
#wrap it in one word