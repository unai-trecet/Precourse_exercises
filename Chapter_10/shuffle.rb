def shuffle array
	rec_shuffle array, array.length
end

def rec_shuffle shuffle_array, times

	while true
		pos1 = rand(shuffle_array.length - 1)
		pos2 = rand(shuffle_array.length - 1)

		if(pos1 != pos2)
			aux = shuffle_array[pos1]
			shuffle_array[pos1] = shuffle_array[pos2]
			shuffle_array[pos2] = aux
			break
		end
	end

	if(times > 0 ) 
		rec_shuffle shuffle_array, times-1
	end

	shuffle_array

end

puts "Write some words to be shuffled please, until you only press enter."

array = []
while true
	aux = gets.chomp
	if(aux.downcase != '')
		array.push(aux)
	else
		break
	end
end

puts shuffle array

puts 'FIN'