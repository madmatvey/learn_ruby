class Friend
	def greeting(name = nil)
		if name == nil 
			result = "Hello!"
		else
			result = "Hello, " + name + "!"
		end
		result
	end
end