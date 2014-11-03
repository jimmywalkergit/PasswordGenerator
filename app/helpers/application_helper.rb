module ApplicationHelper



	def randomnums()


		randomnum = rand(8**8).to_s(8)


	return randomnum

	end

	def generatepass(genlength)
	i = 0
	
		letters = "abcdefghijklmnopqrstuvwxyz"
		randomstring = ""

			while i<genlength do
				randomstring << letters[rand(26)]
				i += 1
			end	
			




	end

	def randomletters()
		i = 0
		letters = "abcdefghijklmnopqrstuvwxyzQWERTYUIOPASDFGHJKLZXCVBNM1234567890!@$%^&*()_"
		randomstring = ""

			while i<8 do
				randomstring << letters[rand(letters.length)]
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


stringlist = ["and", "more", "the", "each", "most","cat","are", "really", "dog", "horse", "pig", "house", "lake", "tree", "apple", 
"greasy", "small", "dirty", "solid", "quick", "hot", "frozen", "slimy", "mostly", "Oakland", "Grizzlies", "oakland", "grizzlies", "Dodge", "dodge", "Kresge",
"kresge", "South", "south", "foundation"]
randomstring = ""


while i < 4 do


randomstring += input[rand(input.length)]
randomstring += stringlist[rand(stringlist.length)]

i += 1
end

return randomstring


end

def randomsecure()
i = 0
input = "!@#$%&+="
mynumbers = "1234567890"

stringlist = ["and", "more", "the", "each", "most","cat","are", "really", "dog", "horse", "pig", "house", "lake", "tree", "apple", 
"greasy", "small", "dirty", "solid", "quick", "hot", "frozen", "slimy", "mostly", "Oakland", "Grizzlies", "oakland", "grizzlies", "Dodge", "dodge", "Kresge",
"kresge", "South", "south", "foundation"]
randomstring = ""


while i < 4 do

randomstring += mynumbers[rand(mynumbers.length)]
randomstring += input[rand(input.length)]
randomstring += stringlist[rand(stringlist.length)]

mynum = rand(randomstring.length)
randomstring[mynum] = randomstring[mynum].upcase
i += 1
end

return randomstring



end

end

