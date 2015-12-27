class XmlDocument
	#attr_accessor :xml
	@@indent_depth = 0
	@@indent = false
	def initialize (indents=false)
		@@indent = indents
		@xml = ""
	end

	def method_missing (method_name, hash={})
		indentation =  "  " * @@indent_depth
		if @@indent 
			newstr = "\n"
			@@indent_depth += 1
		else 
			newstr = ""
		end
		if hash == {}
			if block_given?
				@xml = "#{indentation}<#{method_name}>#{newstr}" + 
				yield(XmlDocument.new(@@indent)) + 
				"#{indentation}</#{method_name}>#{newstr}" 
			else
				@xml = "#{indentation}<#{method_name}/>#{newstr}"
			end
		else
			hash.each_pair {|key,value|  @xml+= "#{indentation}<#{method_name} "+key.to_s+"='"+value.to_s+"'/>#{newstr}" }
		end

		@xml
	end

	def send (tag_name)
		@xml="<#{tag_name}/>"
	end
end