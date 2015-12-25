class Temperature
	attr_accessor :f, :c 
	class << self
        def from_celsius	(celcium) 	 self.new(:c => celcium) 	 end    
        def from_fahrenheit	(fahrenheit) self.new(:f => fahrenheit)  end    
    end   
	def initialize(params)
		if params[:f] != nil && params[:c] == nil
			@f = params[:f]
			@c = ftoc(@f)
		else
			@c = params[:c]
			@f = ctof(@c)
		end
	end

	def in_fahrenheit
		@f
	end

	def in_celsius
		@c
	end

private

	def ftoc(farengheit)
		(farengheit-32)*5/9
	end

	def ctof(celcium)
		(celcium*1.8)+32
	end
end

class Celsius < Temperature
	def initialize(celcium)
		super(:c => celcium)
	end
end

class Fahrenheit < Temperature
	def initialize(fahrenheit)
		super(:f => fahrenheit)
	end
end