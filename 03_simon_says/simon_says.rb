def echo input
	input.to_s
end

def shout input
	input.upcase
end

def repeat (input, reps=2)
	output = ''

	output = (input + ' ')*reps

	output = output.strip

	output
end

def start_of_word word, letter
	output = ''

	while letter > 0
		output = output + word[letter - 1]
		letter = letter - 1
	end

	output = output.reverse

	output
end

def first_word phrase
	words = phrase.split()

	words[0]
end

def titleize title
	output = ''

	little_words = ['and','the','over']

	words = title.split()

	words = words.map do |word|
		if little_words.include?(word) == true
			if word == words[0]
				words[0] = word.capitalize
			else
				word
			end
		else
			word = word.capitalize
		end
	end

	output = words.join(' ')

	output
end

#COMPLETE