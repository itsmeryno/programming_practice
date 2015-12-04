class Exercise3

	def format_quote(who,what)
		"#{who} says \"#{what}\"" 
	end
	
	def get_quote
		puts "What is the quote?"
		quote = gets.chomp
		puts "Who said it?"
		source = gets.chomp
		format_quote(source,quote)
	end

end

ex3=Exercise3.new
quote=ex3.get_quote
puts quote
