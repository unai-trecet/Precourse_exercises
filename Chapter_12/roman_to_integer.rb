def roman_to_integer r_number
  roman_val = {'i' => 1,
               'v' => 5,
               'x' => 10,
               'l' => 50,
               'c' => 100,
               'd' => 500,
               'm' => 1000}

  value = 0
  next_val = 0
  integer = 0

  r_number.reverse.each_char do |chr|
    value = roman_val[chr.downcase].to_i

    if !value 
      puts 'This is not a valid roman number.'
      return
    end

    if value < next_val
      value = value * -1
    else
      next_val = value  
    end

    integer += value
  end  

  integer
end


puts roman_to_integer 'mcmxliv'
puts roman_to_integer 'MCDXCIX'
