require_relative 'ex4'
require 'test/unit'

class Exercise4Test < Test::Unit::TestCase

	def test_simple
		ex4 = Exercise4.new
		sentence = ex4.get_sentence()
	end

end