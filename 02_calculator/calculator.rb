def add(one,two)
	one+two
end

def subtract (one,two)
	one-two
end

def sum(arr)
    arr.inject(0) {|summ, elem| summ + elem.to_i }
end

def multiply(*numbers)
	numbers.inject{ |result, elem | result * elem.to_i  }
end

def power(one,two)
	one ** two
end