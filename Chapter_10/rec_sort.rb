

def sort some_array # This "wraps" recursive_sort.
rec_sort some_array, []
end

def rec_sort unsorted_array, sorted_array

	i = 0
	k = 0
	aux = unsorted_array[i]
	
	while i < unsorted_array.length		
		if(aux.downcase > unsorted_array[i].downcase) 	
			aux = unsorted_array[i]			
			k = i
		end		
		i = i + 1
	end

	#puts aux

	while k < unsorted_array.length
		if(k < unsorted_array.length - 1)
			unsorted_array[k] = unsorted_array[k+1]
		end
		k = k + 1
	end
	unsorted_array.pop
	sorted_array.push(aux)

	if (unsorted_array.length > 0)
		rec_sort unsorted_array, sorted_array
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