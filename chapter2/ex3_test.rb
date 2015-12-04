require_relative 'ex3'
require 'test/unit'

class Exercise3Test < Test::Unit::TestCase

	def test_simple
		ex3 = Exercise3.new
		formatted_quote=ex3.format_quote("A", "B")
		assert_equal("A says \"B\"", formatted_quote)
	end
	
end