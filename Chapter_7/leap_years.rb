start_year = gets.chomp
end_year = gets.chomp

start_year = start_year.to_i
end_year = end_year.to_i

year = start_year

puts "LET\'S START!!"

while year <= end_year  
	mod = year % 4
	mod100 = year % 100
	mod400 = year % 400 
	if (mod == 0 && mod100 != 0) || (mod100 == 0 && mod400 == 0) 
		puts year
	end

	year = year + 1
end
 puts "FIN"