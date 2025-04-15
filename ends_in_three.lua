function ends_in_3(num)
	numberString = '' .. num
	if string.sub(numberString, -1) == '3'
	then
		return true
	end
	return false
end

-- print(ends_in_3(37))

-- print(ends_in_3(43))

function is_prime(number)
	if number == 2 then return true end
	if number == 3 then return false end
	if number < 2 then return false end
	if number % 2 == 0 then return false end
	if number < 9 then return true end
	if number % 3 == 0 then return false end


	r = math.floor(math.sqrt(number))

	f = 5

	while f <= r do
		print('\t', f)
		if number % f == 0 then return false end
		if number % (f + 2) == 0 then return false end
		f = f + 6
	end
	return true
end

print(is_prime(5003))