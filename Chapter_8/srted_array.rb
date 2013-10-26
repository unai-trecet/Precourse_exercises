words = []

puts "Please write whatever you want"

words.push gets.chomp

while words.last != "" 

	words.push gets.chomp

end

puts words.sort

puts "FIN!!!" 