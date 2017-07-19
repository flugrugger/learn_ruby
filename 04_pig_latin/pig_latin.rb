def translate word
	vowels = ['e','u','i','o','a']

	words = word.split()
	
	if words.length == 1
		if word['qu']
			phoneme = 'qu'
			if word.index('qu') == 0
				word = word.sub(phoneme, '')
				word = word + phoneme + 'ay'
				word
			else
				phoneme = word[0] + 'qu'
				word = word.sub(phoneme, '')
				word = word + phoneme + 'ay'
				word
			end
		elsif vowels.include?(word[0])	
			word = word + 'ay'
			word
		elsif vowels.include?(word[1])
			first_letter = word[0]
			word = word.sub(first_letter,'')
			word = word + first_letter + 'ay'
			word
		elsif vowels.include?(word[2])
			first_letters = word[0..1]
			word = word.sub(first_letters, '')
			word = word + first_letters + 'ay'
			word
		else
			first_letters = word[0..2]
			word = word.sub(first_letters, '')
			word = word + first_letters + 'ay'
			word
		end
	else words = words.map do |a|
			if a['qu']
				phoneme = 'qu'
				if a.index('qu') == 0
					a = a.sub(phoneme, '')
					a = a + phoneme + 'ay'
					a
				else
					phoneme = a[0] + 'qu'
					a = a.sub(phoneme, '')
					a = a + phoneme + 'ay'
					a
				end
			elsif vowels.include?(a[0])	
				a = a + 'ay'
			elsif vowels.include?(a[1])
				first_letter = a[0]
				a = a.sub(first_letter,'')
				a = a + first_letter + 'ay'
			elsif vowels.include?(a[2])
				first_letters = a[0] + a[1]
				a = a.sub(first_letters, '')
				a = a + first_letters + 'ay'
			else
				first_letters = a[0] + a[1] + a[2]
				a = a.sub(first_letters, '')
				a = a + first_letters + 'ay'
			end
		end
		words = words.join(' ')
		words
	end
end

puts translate('square square')

#COMPLETE