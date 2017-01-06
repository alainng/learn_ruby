#write your code here
def echo(input)
	return input.to_s
end

def shout(input)
	return input.upcase
end

def repeat(input,times=2)
	result = input.to_s
	for i in 1..times-1
		result = "#{result} #{input}"
	end
	return result
end

def start_of_word(input,number_of_letters)
	return input[0..number_of_letters-1]
end

def first_word(input)
	return input.split(" ")[0]
end

def titleize(input)
	#return input.split.map(&:capitalize).join(' ')
	#return input.split.map{|item| item.capitalize if (item != "and")}.join(' ')
	array=Array.new
	values = input.split(" ")
	values.each do |value|
		if array.length>0 and (value == "and" or value == "the" or value == "over")
			array << value
		else
			array << value.capitalize
		end
	end
	return array.join(' ')
end