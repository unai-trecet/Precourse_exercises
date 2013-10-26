#99 bottles of beer on the wall, 99 bottles of beer.
#Take one down and pass it around, 98 bottles of beer on the wall.

num_bottles = 99 
first_lyric = " bottles of beer on the wall, " 
second_lyric = " bottles of beer."
third_lyric = "Take one down and pass it around, "
fourth_lyric = " bottles of beer on the wall."

while num_bottles != 0
	
	puts num_bottles.to_s + first_lyric + num_bottles.to_s + second_lyric
	if num_bottles != 1
		puts third_lyric + (num_bottles - 1).to_s + fourth_lyric
	else
		puts third_lyric + "no" + fourth_lyric
	end

	num_bottles = num_bottles - 1
	puts ""
end

puts "No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall."