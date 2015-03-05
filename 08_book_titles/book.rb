class Book
	def title=(string)
		small_words = %w[a an and the there this or for in of nor over]
		new_title = ""
		string.split().each_with_index do |word, index|
			if index == 0
				new_title << word.capitalize
			elsif !(small_words.include? (word)) or word == "i"
				new_title << word.capitalize
			else
				new_title << word
			end				
			new_title << " "
		end
		@title = new_title.chop
	end
	def title
		@title
	end
end