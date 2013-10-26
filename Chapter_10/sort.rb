def sort array
	norec_sort array
end	


def norec_sort unsorted_array

	sorted_array = []
	aux_array = unsorted_array

	i = 0
	j = 0
	k = 0
	count = 0
	while true
		while i < unsorted_array.length
			aux = aux_array[i]
			sust = false
			ord = true
			while j < unsorted_array.length
				if(aux.downcase > aux_array[j].downcase)
					aux = unsorted_array[j]
					k = j
					ord = false
				end
				j = j+1	
			end			

			if(k == aux_array.length - 1)
				sust = true
			end		
			
			if(ord)
				k = i
			end
			
			if(sust == false)
				while k < aux_array.length
					if(k < aux_array.length - 1)
						aux_array[k] = aux_array[k+1]
						sust = true
					end
					k = k + 1
				end
			end
			if(sust)
				aux_array.pop
			end
			
			sorted_array.push(aux)

			i = i + 1
			j = 0
		end
		if(aux_array.length == 0 || sust == false)
			break
		end
		count = count +1
		i = 0
	end

	sorted_array
end

puts "Write some words to be sorted please, until you only press enter."

array = []
while true
	aux = gets.chomp
	if(aux.downcase != '')
		array.push(aux)
	else
		break
	end
end

puts sort array

puts 'FIN'