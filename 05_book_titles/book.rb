class Book
# write your code here
	def initialize()
		@title = "Please set the title"
	end

	def title()
		return @title
	end

	def title=(new_title)
		@title = titleize(new_title)
	end

	def titleize(title)
		words = title.split
		new_title = ""
		lower_case_words = ["and", "the", "over", "in", "of", "a", "an"] #Words that should stay lower case

		words.each_with_index do |current_word, index|
			if(not lower_case_words.include? current_word or index == 0)
				current_word = current_word.capitalize
			end

			new_title += current_word + " "
		end

		return new_title.rstrip
	end
end
