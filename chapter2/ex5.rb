require_relative 'ex5_calc'

puts "What is the first number?"
num1 = gets.chomp.to_i
puts "What is the second number?"
num2 = gets.chomp.to_i

calc = Calculator.new
output = calc.do_calc(num1, num2)

puts output

# if (num1 < 0)
# 	num1 *= -1
# end
# if (num2 < 0)
# 	num2 *= -1
# end

# sum=num1+num2
# diff=num1-num2
# mult=num1*num2
# if (num2 == 0)
# 	div="undefined"
# else
# 	div=num1/num2
# end
# puts "#{num1} + #{num2} = #{sum}\n#{num1} - #{num2} = #{diff}\n#{num1} * #{num2} = #{mult}\n#{num1} / #{num2} = #{div}"