def sandwich
	puts "top bread"
	yield 
	puts "bottom bread"
end

sandwich do
	puts "mutton, lettuce and tomato"
end

def tag(tagname, text)
	html = "<#{tagname}>#{text}</#{tagname}>"
	yield html
end

tag("p", "Lorem ipsum") do |markup|
	puts markup
end

def bad_sandwich(contents)
	puts "top bread"
	puts contents
	puts "bottom bread"
end

