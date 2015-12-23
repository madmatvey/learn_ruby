def measure(times_do = 1)
	all=[]
	times_do.times do 
		start = Time.now
		yield 
		finish = Time.now
		all.push( finish - start )
	end
	 result = all.inject(0){ |c,jo| c+jo }
	 average = result / times_do 
end