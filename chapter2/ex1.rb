class Exercise1

	def get_name
		puts "What is your name?"
		name = gets.chomp
		out = "Hello, " + name + ", nice to meet you!"
		puts out
	end
	
	def get_name_no_vars
		puts "What is your name?"
		puts "Hello, #{gets.chomp}, nice to meet you!"
	end
end

ex=Exercise1.new
ex.get_name
puts "\n"
ex.get_name_no_vars

