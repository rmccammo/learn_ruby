#write your code here
def translate(phrase)
	first_letter = phrase[0]
	vowels = "aeiou"

	#If first letter is a vowel, return the word with "ay" at the end
	if vowels.include? first_letter
		return phrase + "ay"
	#Otherwise, move the first letter to the end, then add "ay"
	else
		return phrase[1..phrase.length] + first_letter + "ay"
	end 
end