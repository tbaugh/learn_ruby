def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(numbers)
	sum = 0
	numbers.each do |number|
		sum = sum + number
	end
	return sum
end

def multiply(numbers)
	product = 1
	numbers.each do |number|
		product = product * number
	end
	return product
end

def power(a, b)
	a ** b
end

def factorial(n)
		if n == 0
			return 1 
		end
    (1..n).inject { |i,j| i*j }
end