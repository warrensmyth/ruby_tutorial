states = ["Kansas", "Nebraska", "North Dakota", "South Dakota"]

# Returns a URL-friendly version of a string.
# 	Example: "North Dakota" -> "north-dakota"
def urlify(string)
	string.downcase.split.join('-')
end

# urls: Imperative version
def imperative_urls(states)
	urls = []
	states.each do |state|
		urls << urlify(state)
	end
	urls
end
p imperative_urls(states)

# urls: Functional Version
def functional_urls(states)
	states.collect { |state| urlify(state) }
end
p functional_urls(states)

def example_url(states)
	states.collect { |state| "https://example.com/" + urlify(state) }
end
p example_url(states)

# singles: Imperative version
def imperative_singles(states)
	singles = []
	states.each do |state|
		if state.split.length == 1
			singles << state
		end
	end
	singles
end
p imperative_singles(states)

# singles: Functional version
def functional_singles(states)
  states.reject { |state| state.split.length == 1 }
end
p functional_singles(states)

def dakotas(states)
	states.reject { |state| state.include?("Dakota") }
end
p dakotas(states)

def two_banger(states)
	states.reject { |state| state.split.length == 2 }
end
p two_banger(states)

numbers = 1..10

# sum: Imperative Version
def imperative_sum(numbers)
	total = 0
	numbers.each do |n|
		total += n
	end
	total
end
p imperative_sum(numbers)

# sum: Functional Version
def functional_sum(numbers)
	numbers.inject { |total, n| total += n }
end
p functional_sum(numbers)


# lengths: Imperative version
def imperative_lengths(states)
	lengths = {}
	states.each do |state|
		lengths[state] = state.length
	end
	lengths
end
puts imperative_lengths(states)

# lengths: Functional version
def functional_lengths(states)
	states.inject({}) do |lengths, state|
		lengths[state] = state.length
		lengths
	end
end
puts functional_lengths(states)

# product: Imperative version
def imperative_product(numbers)
	total = 1
	numbers.each do |n|
		total *= n
	end
	total
end
puts imperative_product(numbers)

# product: functional version
def functional_product(numbers) numbers.inject { |total, n| total *=n} end
puts functional_product(numbers)






