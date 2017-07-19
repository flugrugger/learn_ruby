class Book
	attr_accessor :title

	def title
		downcasers = ['and','to','in','the','of','a','an']

		words = @title.split()
		
		words = words.map do |a|
			a = a.capitalize
		end
		
		@title = words.join(' ')

		downcasers.each do |b|
			@title = @title.gsub(' ' + b.capitalize + ' ',' ' + b.downcase + ' ')
		end

		@title
	end
end

@book = Book.new

@book.title = "inferno"
puts @book.title

#COMPLETE