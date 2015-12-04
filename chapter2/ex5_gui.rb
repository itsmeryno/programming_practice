require 'tk'
require_relative 'ex5_calc'

mainframe = TkRoot.new { 
	title "Exercise 5" 
	minsize(400,400) 
}

num1text=TkVariable.new
num2text=TkVariable.new

labeltext=TkVariable.new
prompt1=TkLabel.new(mainframe) {
	pack {
		side 'left'
	}
}
prompt1.text="What is the first number?"

entry_num1=TkEntry.new(mainframe) {
	pack {
		side 'left'
	}
	validate 'all'
	validatecommand [
		proc{|str| 
			if ( str.length == 0 || num2text.value.length == 0 )
				puts "values blank. not setting label text"
				labeltext.value = ""
			else 
				num1=str.to_i
				num2=num2text.value.to_i
			
				calc = Calculator.new
				labeltext.value = calc.do_calc( num1, num2 )
			end

			true
		}, '%P']
}
entry_num1.textvariable=num1text

prompt2=TkLabel.new(mainframe) {
	pack {
		side 'left'
	}
}
prompt2.text="What is the second number?"

entry_num2=TkEntry.new(mainframe) {
	pack {
		side 'left'
	}
	validate 'all'
	validatecommand [
		proc{|str| 
			if ( num1text.value.length == 0 || str.length == 0 )
				puts "values blank. not setting label text"
				labeltext.value = ""
			else 
				num1=num1text.value.to_i
				num2=str.to_i
			
				calc = Calculator.new
				labeltext.value = calc.do_calc( num1, num2 )	
			end
			
			true
		}, '%P']
}
entry_num2.textvariable=num2text

label=TkLabel.new(mainframe) {
	pack {
		side 'left'
	}
}
label.textvariable=labeltext

Tk.mainloop