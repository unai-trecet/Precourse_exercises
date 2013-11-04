
def grand_father_clock some_proc
  hour = Time.new.hour
  
  if hour >= 13
    hour = hour - 12
  end

  if hour == 0
    hour = 12
  end

  hour.times do
    some_proc.call
  end
end

first_proc = Proc.new do 
  puts 'DONG!!!'
end

grand_father_clock first_proc