def translate(str)
	result = str.split(/[, \.?!]+/)
	result.map! {|elem| elem=translateWord(elem) }
	result.join(' ')
end




def translateWord(word)
	vowels    = "AEIOUYaeiouy"
	consonant = "BCDFGHJKLMNPQRSTVWXZbcdfghjklmnpqrstvwxz"
	if vowels.include?(word[0])
		result = word+"ay"
	elsif consonant.include?(word[1]) || word[0..1] == "qu"

		if consonant.include?(word[2]) && word[0..1] != "qu" || word[1..2] == "qu"
			result = word[3..word.size]+word[0..2]+"ay"
		else
			result = word[2..word.size]+word[0..1]+"ay"
		end
	else 
		result = word[1..word.size]+word[0]+"ay"
	end
	result
end