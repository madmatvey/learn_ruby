def echo (string)
	string
end

def shout (string)
	string.upcase
end

def repeat (string, count = 2)
	((string + " ")*count).strip
end

def start_of_word (str, count)
	str[0,count]
end

def first_word (str)
	str.split(/[, \.?!]+/)[0]
end

def titleize (str)
	result=str.split(/[, \.?!]+/)
	if (result.size > 1) 
		result.map! {|elem| elem.capitalize}
	end
# this don't work correcrly!
	result.join(' ').capitalize
end
