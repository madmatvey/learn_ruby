class Timer
	attr_accessor :seconds
	attr_reader :time_string
	def initialize 
		@seconds = 0 
	end

	def seconds=(count)
		@seconds = count
	end

	def time_string
		hour = @seconds / (60 * 60)
		sec = @seconds % (60 * 60) 
		min = sec / 60
		sec = sec % 60
		@time_string = sprintf("%02d:%02d:%02d",hour,min,sec) 
	end
end