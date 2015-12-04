require 'tk'

class Exercise2

	def initialize
		mainframe = TkRoot.new { 
			title "Exercise 2" 
			minsize(400,100) 
		}

		entrytext=TkVariable.new
		labeltext=TkVariable.new
		prompt=TkLabel.new(mainframe) {
			pack {
				side 'left'
			}
		}
		prompt.text="What is your text?"
		
		entry=TkEntry.new(mainframe) {
			pack {
				side 'left'
			}
			validate 'key'
			validatecommand [
				proc{|str| 
					len=str.length 
					output=""
					if ( len > 0 )
						output = "#{str} has #{len} characters"
					end
					
					labeltext.value=output
					true
				}, '%P']
		}
		entry.textvariable=entrytext
		label=TkLabel.new(mainframe) {
			pack {
				side 'left'
			}
		}
		label.textvariable=labeltext
		
	end

end

ex=Exercise2.new
Tk.mainloop
