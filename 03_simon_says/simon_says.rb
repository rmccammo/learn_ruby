#write your code here
def echo(phrase)
	return phrase
end

def shout(phrase)
	return phrase.upcase
end

def repeat(phrase, times = 2)
	new_phrase = ""
	(0..times - 1).each do 
		new_phrase += phrase + " "
	end

	return new_phrase.rstrip #Return string with last space removed
	#return phrase + " " + phrase
end

def start_of_word(word, letters)
	return word[0..letters - 1]
end

def first_word(phrase)
	return phrase.split[0]
end

def titleize(title)
	words = title.split
	new_title = ""

	words.each_with_index do |current_word, index|
		if(current_word != "and" && current_word != "the" && current_word != "over" || index == 0)
			current_word = current_word.capitalize
		end

		new_title += current_word + " "
	end

	return new_title.rstrip
end