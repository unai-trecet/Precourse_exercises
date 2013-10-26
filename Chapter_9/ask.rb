def ask question
	while true
		puts question
		reply = gets.chomp.downcase

    	if (reply == 'yes') || (reply == 'no')
			if (reply == 'yes')
				return true
			elsif (reply == 'no')
				return false
			end
    	else
    		puts 'Please answer yes or no.'
    	end
	end
end

ask 'Do you like to be a tontako?'
ask 'Do you want a beer?'
ask 'Do you like soccer?'