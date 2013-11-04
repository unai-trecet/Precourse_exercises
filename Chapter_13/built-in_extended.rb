class Array

  def shuffle
    rec_shuffle self, self.length
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
end

puts [1,2,3,4,5,6,7,8,9].shuffle

class Integer
def old_roman 

  aux = self
  roman_num = ''
  
    while true
    
      if((aux / 1000) >= 1)
        roman_num = roman_num + 'M'
        aux = aux - 1000
      elsif ((aux / 500) >= 1)
        if(aux >= 900)
          roman_num = roman_num + 'CM'
          aux = aux - 900         
        else
          roman_num = roman_num + 'D'
          aux = aux - 500   
        end
      elsif((aux / 100) >= 1)
        if(aux >= 400)
          roman_num = roman_num + 'CD'
          aux = aux - 400         
        else
          roman_num = roman_num + 'C'
          aux = aux - 100   
        end
      elsif((aux / 50) >= 1)
        if(aux >= 90)
          roman_num = roman_num + 'XC'
          aux = aux - 90          
        else
          roman_num = roman_num + 'L'
          aux = aux - 50    
        end
      elsif((aux / 10) >= 1)
        if(aux >= 40)
          roman_num = roman_num + 'XL'
          aux = aux - 40          
        else
          roman_num = roman_num + 'X'
          aux = aux - 10    
        end

      elsif((aux / 5) >= 1)
        if(aux >= 9)
          roman_num = roman_num + 'IX'
          aux = aux - 9         
        else
          roman_num = roman_num + 'V'
          aux = aux - 5   
        end
      elsif((aux / 1) >= 1)
        if(aux >= 4)
          roman_num = roman_num + 'IV'
          aux = aux - 4         
        else
          roman_num = roman_num + 'I'
          aux = aux - 1 
        end
      else
        break     
      end
    end
    
    roman_num
  end
end  

puts 2345.old_roman
