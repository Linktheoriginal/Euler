i=0
total = 0
while i < 1000
	if i % 5 == 0 or i % 3 == 0
		total = total + i
	end 
	i = i + 1
end
print total