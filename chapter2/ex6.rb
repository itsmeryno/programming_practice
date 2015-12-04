puts "What is your current age?"
age = gets.chomp.to_i
puts "At what age would you like to retire?"
retirement = gets.chomp.to_i
years_to_retire = retirement - age
if ( years_to_retire < 0 )
	puts "You can already retire!"
else
	time = Time.new
	year = time.year
	retire_year = year + years_to_retire
	puts "You have #{years_to_retire} years left until you can retire"
	puts "It's #{year}, so you can retire in #{retire_year}"
end