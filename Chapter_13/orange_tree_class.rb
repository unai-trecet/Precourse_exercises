# Orange tree. Make an OrangeTree class that has a height method that returns
# its height and a one_year_passes method that, when called, ages the tree one
# year. Each year the tree grows taller (however much you think an orange
# tree should grow in a year), and after some number of years (again, your
# call) the tree should die. For the first few years, it should not produce
# fruit, but after a while it should, and I guess that older trees produce
# more each year than younger trees...whatever you think makes the most
# sense. And, of course, you should be able to count_the_oranges (which returns
# the number of oranges on the tree) and pick_an_orange (which reduces the
# @orange_count by 1 and returns a string telling you how delicious the orange
# was, or else it just tells you that there are no more oranges to pick this
# year). Make sure any oranges you don’t pick one year fall off before the
# next year.

class Orange_tree

  def initialize
    @height = 1
    @age = 0
    @orange_counter = 0
    @dead = false 
    @max_oranges = 0
  end

  def one_year_passes
    @age += 1
    if @age > 100
      @dead = true
      puts 'Sorry, this ancient tree is dead.'
    else
      one_year_growth
      orange_growth
    end
  end

  def is_dead?
    @dead
  end

  def get_height
    @height
  end

  def get_count_oranges
    @orange_counter
  end

  def pick_oranges 
    if @orange_counter > 0 
      @orange_counter -= 1 
      puts 'Mmm! Delicious!'
    else
      puts 'Sorry... There is no oranges in this tree. Wait for the next crop.'
    end  
  end

  private

  def one_year_growth
    @height += 20
  end

  def orange_growth
    if @age > 3 && @age < 20 
      @max_oranges += 5
      @orange_counter = @max_oranges
    end
  end  
end

tree = Orange_tree.new

count = 10
110.times do
  if count % 10 == 0
    tree.one_year_passes
    puts 'Tree height: '+ tree.get_height.to_s
    oranges = tree.get_count_oranges
    puts 'Num oranges: '+ oranges.to_s

    oranges.times do
      tree.pick_oranges
    end
    oranges = tree.get_count_oranges
    puts 'Num oranges: '+ oranges.to_s
  end

  count += 1
end