#using the dickson method to generate pythagorean triples
#http://en.wikipedia.org/wiki/Formulas_for_generating_Pythagorean_triples#Dickson.27s_method

r = 2
bfound = false
while not bfound
	rprime = (r*r)/2
	for s in 2..rprime
		if rprime % s == 0 and not bfound
			t = rprime/s
			if (3*r) + (2*s) + (2*t) == 1000
				bfound = true
				print "r = " + r.to_s + " x = " + (r + s).to_s + " y = " + (r + t).to_s + " z = " + (r + t + s).to_s
			end
		end
	end
	r = r + 1
end