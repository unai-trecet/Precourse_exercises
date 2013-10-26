
count = 0

while count < 3
	 asking = gets.chomp

	 r_num = 1900 + rand(60)

	 if asking == asking.upcase && asking != "BYE"
	 	puts "NO, NO SINCE " + r_num.to_s + "!"
	 else 
	 	if asking == "BYE" 
	 		count = count + 1
	 	end
	 	if count <3
			puts "SPEAK UP, SONNY!"
	 	end	
	 end
end

puts "BYE SONNY!"