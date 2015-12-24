class Book
	attr_accessor :title

	def title=(str)
		exeptions = ['a','in','of','an','and','over','the']
		result=str.split(/[, \.?!]+/)
		result.map! {|elem| exeptions.include?(elem) ? elem : elem.capitalize }
		result[0].capitalize!
		@title=result.join(' ')
	end
end