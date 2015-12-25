class Dictionary < Hash
	attr_accessor :d
	def initialize 
		@d={}
	end 
	def entries
		@d
	end
	def add (hash={})
		hash = { hash => nil } if hash.class == String 
		@d.update(hash)
	end
	def keywords
		@d.keys.sort
	end
	def include? (str)
		@d.include? (str)
	end
	def find (str)
		result = {}
		@d.each_pair {|key,value| key.include?(str) ? result.update(key => value) : result }
		result
	end
	def printable 
		result = ""
		@d.sort.map {|key,value| result+= "["+key+"] \""+value+"\"\n" }
		result.chop
	end
end