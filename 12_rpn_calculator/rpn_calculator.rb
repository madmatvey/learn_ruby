class RPNCalculator
	class UnderFlowError < StandardError;end

	attr_accessor :calculator, :expr
	def initialize
    	@calculator = []
    	@expr = nil
  	end

	def plus 
		raise UnderFlowError, "calculator is empty" if empty?
		@calculator.push ("+")
	end

	def minus
		raise UnderFlowError, "calculator is empty" if empty?
		@calculator.push ("-")
	end

	def times
		raise UnderFlowError, "calculator is empty" if empty?
		@calculator.push ("*")
	end

	def divide
		raise UnderFlowError, "calculator is empty" if empty?
		@calculator.push ("/")
	end

	def evaluate(expr)
    	@expr = expr
    	#@calculator = []
		tokenz.each do |token|
      		if numeric?(token)
        		@calculator.push(token.to_i)
      		elsif token == "+"
        		rhs = @calculator.pop
        		lhs = @calculator.pop
        		@calculator.push(lhs + rhs)
      		elsif token == "*"
        		rhs = @calculator.pop
        		lhs = @calculator.pop
        		calculator.push(lhs * rhs)
      		elsif token == "-"
        		rhs = @calculator.pop
        		lhs = @calculator.pop
        		@calculator.push(lhs - rhs)
        	elsif token == "/"
         		rhs = @calculator.pop
         		rhs.to_f
        		lhs = @calculator.pop
        		lhs.to_f
        		@calculator.push(lhs.fdiv(rhs))		
      		else
        		raise "whaaaat I don't know this token?"
      		end
      	end
      	@calculator.pop	
	end

	def value 
		evaluate(@calculator.join(" "))
	end

  	def empty?
    	@calculator.empty?
  	end

  	def push(val)
   		@calculator.push(val)
  	end

  	def pop
    	raise UnderFlowError, "calculator is empty" if empty?
    	@calculator.pop
  	end
  	def tokens (expr)
  		@expr=expr
  		@expr.split(" ")
  	end
private
  	def tokenz
    	@expr.split(" ")
  	end


  	def numeric?(token)
    	return true if token =~ /\A\d+\Z/
    	true if Float(token) rescue false
  	end
end