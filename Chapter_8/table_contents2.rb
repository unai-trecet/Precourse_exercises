title = "Table of contents"

chapters = [["Getting starter", 1],
			["Numbers", 9],
			["Letters", 13]]

puts title.center(50)

puts

num = 1

chapters.each do |chap|
	name = chap[0]
	page = chap[1]

	beg = "Chapter " + num.to_s + ": " + name 
	ending = "page " + page.to_s

	puts  beg.ljust(30) + ending.rjust(20)

	num = num + 1 
	
end

