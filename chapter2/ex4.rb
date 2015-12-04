class Exercise4

	def get_sentence(noun, verb, adj, adverb)
		"Do you  #{verb} your #{adj} #{noun} #{adverb}. That's hilarious!!"
	end

end

ex4=Exercise4.new
puts "Enter a noun: "
noun = gets.chomp
puts "Enter a verb: "
verb = gets.chomp
puts "Enter an adjective: "
adj = gets.chomp
puts "Enter an adverb: "
adverb = gets.chomp
puts ex4.get_sentence(noun, verb, adj. adverb)