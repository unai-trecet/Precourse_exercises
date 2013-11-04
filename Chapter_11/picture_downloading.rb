  Dir.chdir '/home/unai/Imágenes'
  # First we find all of the pictures to be moved.
  pic_names = Dir['/home/unai/prueba_copia/*.jpg']
  puts 'What would you like to call this batch?'
  batch_name = gets.chomp
  puts
  print "Downloading #{pic_names.length} files: "

  pic_number = 1
  pic_names.each do |name|
    print '.' 
    rename = true
    new_name = if pic_number < 10
                 "#{batch_name}0#{pic_number}.jpg"
               else
                  "#{batch_name}#{pic_number}.jpg"
               end

    if FileTest.exist?(new_name)
      puts
      puts new_name + ', already exists. If you want to overwrite it please type yes, otherwise type no and the file will not be copied to this folder. '
      puts

      while true
        response = gets.chomp
        if response == 'no'
          rename = false
          break
        elsif response == 'yes'
          break
        else 
          puts 'Please, write yes or no'
        end
      end
    end           

    if rename 
      File.rename name, new_name
    end
      
    pic_number = pic_number + 1
  end

  puts 
  puts 'Done!'