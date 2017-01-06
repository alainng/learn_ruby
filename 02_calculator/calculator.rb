def add(first,second)#write your code here
	return first+second
end

def subtract(first,second)
	return first-second
end

def sum(array)
	result = 0
	array.each do |value|
		result += value
	end
	return result
end

def multiply(arg1,arg2,*rest)
	result = arg1*arg2
	rest.each do |value|
		result = result * value
	end
	return result
end

def power(arg1,arg2)
	result = arg1**arg2
	return result
end

def factorial(number)
	if number == 0
		return 1
	else
		return number*factorial(number-1)
	end
end