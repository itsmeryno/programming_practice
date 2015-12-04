class Calculator

	def do_calc(num1, num2)
		
		if (num1 < 0)
			num1 *= -1
		end
		if (num2 < 0)
			num2 *= -1
		end
		
		sum=num1+num2
		diff=num1-num2
		mult=num1*num2
		if (num2 == 0)
			div="undefined"
		else
			div=num1/num2
		end
		
		"#{num1} + #{num2} = #{sum}\n#{num1} - #{num2} = #{diff}\n#{num1} * #{num2} = #{mult}\n#{num1} / #{num2} = #{div}"	
		
	end

end