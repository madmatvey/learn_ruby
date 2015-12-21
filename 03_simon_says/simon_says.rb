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
	result.map! {|elem| elem != 'and' && elem != 'over' && elem != 'the' ? elem.capitalize! : elem }
	result[0].capitalize!
	result.join(' ')
end
