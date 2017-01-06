class Book
# write your code here
	attr_reader :title

	def title=(new_title)
		escapes=%w(the and or in a an of)
		words = new_title.split(" ")
		results = [words[0].capitalize] + 
			words[1..-1].map do |word|
				if escapes.include?(word)
					word
				else
					word.capitalize
				end
			end
		@title = results.join(' ')
	end

end
