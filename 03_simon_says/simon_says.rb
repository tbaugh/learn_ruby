def echo(input) 
	return input
end

def shout(input) 
	return input.upcase
end

def repeat(input, n = 2)
	return ([input] * n).join(" ")
end

def start_of_word(input, n = 1)
	return input[0..n-1]
end

def first_word(input)
	return input.split(" ")[0]
end

def titleize(input)
	small_words = %w[a and the or for of nor over]
	input.split.each_with_index.map {|word, index| small_words.include?(word) && index > 0 ? word : word.capitalize}.join(" ")
end	