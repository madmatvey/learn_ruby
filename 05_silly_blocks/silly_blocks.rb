def reverser
		res = yield.split(/[, \.?!]+/).map {|elem| elem.reverse }
		res.join(' ')
end

def adder(to_add=1)
	yield + to_add
end

def repeater(times_do = 1)
	times_do.times do yield end
end
