def translate(str)
	words = str.split
	words.map! do |word|
		translate_word(word)
	end
	words.join(" ")
end

def translate_word(word)
	first_letter = word[0]
	second_letter = word[1]
	third_letter = word[2]
	vowels = ["a", "e", "i", "o", "u"]
	if vowels.include?(first_letter)
		word + "ay"
	else
		if vowels.include?(second_letter)
				if first_letter == "q" && second_letter == "u"
					word[2..-1] + first_letter + second_letter + "ay"
				else
			 		word[1..-1] + first_letter + "ay"
				end
		else
			if vowels.include?(third_letter)
				if second_letter == "q" && third_letter == "u"
					word[3..-1] + "squay"
				else
					word[2..-1] + first_letter + second_letter + "ay"
				end
			else
				word[3..-1] + first_letter + second_letter + third_letter + "ay"
			end
		end
	end
end


