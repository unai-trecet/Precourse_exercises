class Die
  def initialize
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end

  def set num
    if num >= 1 && num <= 6
      @number_showing = num
    else
      puts 'The die has only six sides!!'
    end
  end 
end

my_die = Die.new

puts my_die.showing

my_die.set 7

puts my_die.showing