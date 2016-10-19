#write your code here

def add(first_num, second_num)
	return first_num + second_num
end

def subtract(first_num, second_num)
	return first_num - second_num
end

def sum(array)
	sum = 0
	array.each do |i|
		sum += i
	end

	return sum
end

def multiply(array)
		sum = 1
	array.each do |i|
		sum *= i
	end

	return sum
end

def power(base, exponent)
	result = 1

	(0..exponent - 1).each do
		result *= base
	end

	return result
end

def factorial(value)
	if value == 0
		return 1
	end

	result = 1

	(1..value).each do |i|
		result *= i
	end

	return result
end