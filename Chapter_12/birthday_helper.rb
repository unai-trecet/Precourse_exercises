
puts 'Please, write your name:'

name = gets.chomp

birthdays = {}

File.readlines('birthday_dates.txt').each do |line|
  b_name, b_month_day, b_year = line.split(',')
  birthdays[b_name.downcase] = b_month_day + ', ' + b_year
  #puts 'NAME '+name + ', ' +birthdays[name]
end

if birthdays[name.downcase] == nil
  puts 'The name you are asking for is not in the data base.'
else
  b_date, b_year = birthdays[name].split(',')
  now = Time.new
  age = now.year - b_year.to_i
  puts name + '\'s birthday is on: ' + b_date
  puts name + ' is ' + age.to_s + ', years old'    
end


