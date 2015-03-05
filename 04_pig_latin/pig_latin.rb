def translate(s)
	
	vowels = ["a", "e", "i", "o", "u"]
	consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]

	words = s.split(" ").map do |word| 								
		
		if vowels.include? (word[0])
			 word + "ay"
		elsif word[0..1] == "qu"
			 word[2..-1] + word[0..1] + "ay"
		elsif word[1..2] == "qu" && consonants.include?(word[0])
			 word[3..-1] + word[0..2] + "ay"
		elsif word[0..2] == "sch"
			 word[3..-1] + word[0..2] + "ay"
		elsif consonants.include?(word[1]) && consonants.include?(word[2])
			 word[3..-1] + word[0..2] + "ay"
		elsif consonants.include?(word[0]) && consonants.include?(word[1])
			 word[2..-1] + word[0..1] + "ay"
		elsif consonants.include? (word[0])
			 word[1..-1] + word[0] + "ay"
		end	
	end
	words.join(" ")
end