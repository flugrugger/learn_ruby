class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def seconds
		@seconds
	end

	def time_string
		second = 0

		minute = 0 

		hour = 0

		second = @seconds

		if second > 59
			minute = (second / 60)
			second = (second % 60)
		else
		end

		if minute > 59
			hour = (minute / 60)
			minute = (minute % 60)
		else
		end

		if second < 10
			second = '0' + second.to_s
		else
		end

		if minute < 10
			minute = '0' + minute.to_s
		else
		end

		if hour < 10
			hour = '0' + hour.to_s
		else
		end

		@time_string = hour.to_s + ':' + minute.to_s + ':' + second.to_s
	end
end

@timer = Timer.new
puts @timer.seconds

#COMPLETE