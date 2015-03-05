class Book
	def title=(string)
		small_words = %w[a an and the there this or for in of nor over]
		new_title = ""
		string.split().each do |word|
			if !(small_words.include? (word)) or word == "i"
				word.capitalize
				new_title << word
			else
				new_title << word
			end				
			new_title << " "
		end
		@title = new_title
	end
	def title
		@title
	end
end

