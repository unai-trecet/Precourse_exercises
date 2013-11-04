#99 bottles of beer on the wall, 99 bottles of beer.
#Take one down and pass it around, 98 bottles of beer on the wall.

def bottles num_bottles
  first_lyric = " bottles of beer on the wall, " 
  second_lyric = " bottles of beer."
  third_lyric = "Take one down and pass it around, "
  fourth_lyric = " bottles of beer on the wall."

  puts num_bottles.to_s + first_lyric + num_bottles.to_s + second_lyric

  if num_bottles != 1
    puts third_lyric + (num_bottles - 1).to_s + fourth_lyric
  else
    puts third_lyric + "no" + fourth_lyric
  end

  num_bottles = num_bottles - 1
  puts ""
  if num_bottles > 0 
    bottles num_bottles
  else
    puts "No more bottles of beer on the wall, no more bottles of beer.
          Go to the store and buy some more, 99 bottles of beer on the wall."
  end
end

num_bottles = 99

bottles num_bottles