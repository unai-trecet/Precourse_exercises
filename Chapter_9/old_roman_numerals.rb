# I = 1 V = 5 X = 10 L = 50
# C = 100 D = 500 M = 1000



def old_roman num

	aux = num
	roman_num = ''
	
	while true
	
		if((aux / 1000) >= 1)
			roman_num = roman_num + 'M'
			aux = aux - 1000
			puts aux
		elsif ((aux / 500) >= 1)
			roman_num = roman_num + 'D'
			aux = aux - 500		
			puts aux
		elsif((aux / 100) >= 1)
			roman_num = roman_num + 'C'
			aux = aux - 100
			puts aux
		elsif((aux / 50) >= 1)
			roman_num = roman_num + 'L'
			aux = aux - 50
			puts aux
		elsif((aux / 10) >= 1)
			roman_num = roman_num + 'X'
			aux = aux - 10
			puts aux
		elsif((aux / 5) >= 1)
			roman_num = roman_num + 'V'
			aux = aux - 5
			puts aux
		elsif((aux / 1) >= 1)
			roman_num = roman_num + 'I'
			aux = aux - 1
			puts aux
		else
			break			
		end
	end
	
	roman_num
end

puts "Write a number and I'll give it you you in its old roman style."
number = gets.chomp.to_i
num_roman = old_roman number

puts num_roman.to_s 

