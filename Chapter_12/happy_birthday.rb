puts 'Hi!'
puts 'What year were you born?'

year = gets.chomp

puts 'What month were you born?'

month = gets.chomp

puts 'What day were you born?'

day = gets.chomp

now = Time.new

birthday = Time.local(year, month, day)

age = now - birthday

age = age/60/60/24/365

puts 'Your age is: ' + age.to_s + 'years.'

aux = year.to_i + 1

while Time.local(aux, month, day) <= now
  puts 'SPANK! ' + aux.to_s
  aux = aux + 1
end

puts 'PAQUITO'
