#write your code here
def translate(phrase)
	result = ""
	words = phrase.split

	words.each do |current_word|
		result += translate_word(current_word) + " "
	end

	return result.rstrip
end

def translate_word(word)
	first_letter = word[0]
	second_letter = word[1]
	third_letter = word[2]

	vowels = "aeiou"
	consonants = "bcdfghjklmnpqrstvwxyz"
	ay = "ay"

	#If first letter is a vowel, return the word with "ay" at the end
	if vowels.include? first_letter then
		return word + ay
	#Counts "qu" as one phenome
	elsif word[0..2].include? "qu" then
		if first_letter != "q" then
			return word[3..word.length] + word[0..2] + ay
		else
			return word[2..word.length] + "quay"
		end
		
	#Otherwise, move the first consonants (up to three) to the end, then add "ay"
	elsif consonants.include? first_letter and consonants.include? second_letter and consonants.include? third_letter then
		return word[3..word.length] + word[0..2] + ay
	elsif consonants.include? first_letter and consonants.include? second_letter then
		return word[2..word.length] + first_letter + second_letter + ay
	else
		return word[1..word.length] + first_letter + ay
	end 
end