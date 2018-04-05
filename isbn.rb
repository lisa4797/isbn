def isbn_ten(number)
	answer = number
	sum = 0
	answer.each_char.with_index do |char, ind|
	results = char.to_i * ind
	sum += results
	end
	if sum % 11 == 0
		puts "This is a valid ten digit ISBN number"
		return "true"
	else
		puts "This is not a valid ten digit ISBN number"
		return "false"
	end
end

def isbn_thirteen(number)
	multiplier = [1, 3, 1, 3, 1, 3, 1, 3, 1, 3, 1, 3, 1]
	answer = number
	sum = 0
	answer.each_char.with_index do |char, ind|
	results = char.to_i * multiplier[ind - 1]
	sum += results
end
	if sum % 10 == 0
		puts "This is a valid thirteen digit ISBN number"
		return "true"
	else
		puts "This is not a valid thirteen digit ISBN number"
		return "false"
	end
end

puts "Please enter a valid ISBN number."
isbn = gets.chomp
if isbn.length == 10
	then isbn_ten(isbn)
elsif isbn.length == 13
	isbn_thirteen(isbn)
else
	puts "This is not a valid isbn number. It must be 10 or 13 digits."
end

