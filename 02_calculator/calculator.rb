def add first, second
	total = first + second
	total
end

def subtract first, second
	total = first - second
	total
end

def sum numbers
	total = 0

	while numbers.length > 0
		total = total + numbers.last
		numbers.pop
	end

	total
end

def multiply terms
	total = 1

	while terms.length > 0
		total = total * terms.last
		terms.pop
	end

	total
end

def power first, second
	total = 1

	second.times do
		total = total*first
	end

	total
end

def factorial number
	total = 1

	if number == 0
		total = 1
	elsif number == 1
		total = 1
	elsif number > 1
		while number > 1
			total = total*number
			number = number - 1
		end
	else
	end

	total
end

#COMPLETE