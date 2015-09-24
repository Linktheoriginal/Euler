sum_of_squares = 0
for x in 1..100
	sum_of_squares = sum_of_squares + (x * x)
end
square_of_sum = 0
for x in 1..100
	square_of_sum = square_of_sum + x
end
square_of_sum = square_of_sum * square_of_sum

print (sum_of_squares - square_of_sum).to_s