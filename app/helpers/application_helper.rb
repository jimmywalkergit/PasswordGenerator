module ApplicationHelper



	def randomnums()


		randomnum = rand(8**8).to_s(8)


	return randomnum

	end

	

	def randomletters()
		i = 0
		letters = "abcdefghijklmnopqrstuvwxyz"
		randomstring = ""

			while i<8 do
				randomstring << letters[rand(26)]
				i += 1
			end	
			

			return randomstring
	end

	def randomletternum()
		i=0
		letternums = "abcdefghijklmnopqrstuvwxyz1234567890"
		randomstring = ""

		while i<8 do
				randomstring << letternums[rand(36)]
				i += 1
			end	

			return randomstring

	end



def randomtest()
i = 0
input = "!@#$%&+="


stringlist = ["and", "or", "the", "each", "cat", "dog", "horse", "pig", "rope", "house", "lake", "tree", "apple", 
"big", "small", "dirty", "solid", "quick", "hot", "frozen", "slimy"]
randomstring = ""


while i < 4 do


randomstring += input[rand(input.length)]
randomstring += stringlist[rand(stringlist.length)]

i += 1
end

return randomstring


end



end

