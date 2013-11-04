
def gen_playlist

  puts 'Enter the name of the new playlist:'

  file_name = gets.chomp
  file_name += '.m3u'

  #Dir.chdir '/home/unai/Dropbox/Curso_RoR/LearntoProgram/Exercises'

  songs_names = shuffle Dir["/home/unai/prueba_copia/**/*.{mp3, m4a}"]

  File.open file_name, 'w' do |f|
    songs_names.each do |song|
      f.write song + "\n"
    end
  end    

  puts 'Done!'
end

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

gen_playlist