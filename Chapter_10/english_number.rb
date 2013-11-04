def english_number number
  if number < 0 # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end

  if number == 0
    return 'zero'
  end

  # No more special cases! No more returns!
  num_string = '' # This is the string we will return.

  ones_place = ['one', 'two', 'three',
                'four', 'five', 'six',
                'seven', 'eight', 'nine']

  tens_place = ['ten', 'twenty', 'thirty',  
                'forty', 'fifty', 'sixty',
                'seventy', 'eighty', 'ninety']

  teenagers  = ['eleven', 'twelve', 'thirteen',
               'fourteen', 'fifteen', 'sixteen',
               'seventeen', 'eighteen', 'nineteen']

  big_nums = [['hundred', 2], ['thousend', 3], ['million', 6], ['billion', 9], ['trillion', 12], ['quadrillion', 15], ['quintillion', 18], ['sextillion', 21], ['septillion', 24],
              ['octillion', 27], ['nonillion', 30], ['decillion', 33]]

  left = number
  
  while big_nums.length > 0
    many_zeros = big_nums.pop

    name = many_zeros[0]
    zeros = 10 ** many_zeros[1]

    write = left / zeros
    left = left - write * zeros

    if write > 0
      prefix = english_number write
      num_string = num_string + prefix + ' ' + name

      if left > 0
        num_string = num_string + ' '
      end
    end    
  end

  write = left/10 
  left = left - write*10 
  
  if write > 0
    if ((write == 1) and (left > 0))
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end

    if left > 0
      num_string = num_string + '-'
    end
  end

  write = left
  left = 0 

  if write > 0
    num_string = num_string + ones_place[write-1]
  end

  num_string
end

puts "Please, type the number you wise to write in english"
response = gets.chomp
puts english_number response.to_i

while true

  puts 'Do you want to write another number? Please, write yes or no.'
  aux = gets.chomp
  if aux == 'yes'
    puts "Please, type the number you wise to write in english"
    response = gets.chomp
    puts english_number response.to_i
  elsif aux == 'no'
    puts 'Bye!'
    break
  else
    puts 'Please, write yes or no.'
  end
end 