class PagesController < ApplicationController


  def Homepage
  end

  def Page1
  end

  def Page2
  end


  def stringsub
	forminput = params['mystring']
	genlength = params['lengthtomake']

mynum = String.new(genlength)
calccheck = checknum(mynum)
puts #{calccheck}

if calccheck
mynum = Integer(mynum)

mypass1 = generateletterpass(mynum)
@lengthletterpass = mypass1

mypass2 = generatesecurepass(mynum)
@lengthsecurepass = mypass2
else
	@lengthsecurepass = "invalid length"
	@lengthletterpass = "invalid length"
end

@inputlength = mynum






#set variables from input

inputstring = String.new(forminput)
inputscore = 0
mylength = inputstring.length
lengthstring = ""
haslength = false
haschar = false
hasnum = false
hasupper = false
hasupperstring = "Mixed Case Status: False"
hascharstring = "Special Character Status: False"
hasnumstring= "Number Status: False"
icounter = 0
jcounter = 0




#check length
if mylength > 7
haslength = true
lengthstring = "Length Status: Long"
else
lengthstring = "Length Status: Short"
end




#check if any character is a number
numrange = "1234567890"



while icounter < mylength do

while jcounter <= 9 do
checkchar = inputstring[icounter]
checknum = numrange[jcounter]

puts "checking #{checkchar} and #{checknum}"

if checknum == checkchar
	hasnum = true
	hasnumstring = "Number Status: True"
	else

	end

jcounter += 1


end
icounter += 1
jcounter = 0
puts "icounter is #{icounter}"
end
icounter = 0
jcounter = 0
#end number checking



#check if any char is a special

specialinput = "~!@#$%^&*()_+|{}>:<?/`;'[]=-"
specialrange = String.new(specialinput)

while icounter < mylength do

while jcounter < specialrange.length do
checkchar = inputstring[icounter]
checknum = specialrange[jcounter]

puts "checking #{checkchar} and #{checknum}"

if checknum == checkchar
	haschar = true
	hascharstring = "Special Character Status: True"
	else

	end

jcounter += 1


end
icounter += 1
jcounter = 0
puts "icounter is #{icounter}"
end
icounter = 0
jcounter = 0
#end special checking



#check for uppercase letters

upperinput = "QWERTYUIOPASDFGHJKLZXCVBNM"
upperrange = String.new(upperinput)

while icounter < mylength do

while jcounter < upperrange.length do
checkchar = inputstring[icounter]
checknum = upperrange[jcounter]

puts "checking #{checkchar} and #{checknum}"

if checknum == checkchar
	hasupper = true
	hasupperstring = "Mixed Case Status: True"
	else

	end

jcounter += 1


end
icounter += 1
jcounter = 0
puts "icounter is #{icounter}"
end
jcounter = 0
icounter = 0
#end upper checking



if hasupper
inputscore += 1
end
if haschar
	inputscore += 3
end
if hasnum 
	inputscore += 1
end
if haslength
	inputscore += 2
end
if mylength > 12
	lengthstring = "Length Status: Very Long"
	inputscore += 1
end
if mylength > 15
	inputscore += 2
end



@upperscore = hasupperstring
@myinputscore = inputscore
@lengthscore = lengthstring
@numberscore = hasnumstring
@specialscore = hascharstring
#insert algorithms here
  
  @formstring = forminput

  end

def show

end

	def generateletterpass(genlength)
	i = 0
	length = Integer(genlength)
		letters = "abcdefghijklmnopqrstuvwxyzQWERTYUIOPASDFGHJKLZXCVBNM1234567890!@$%^&*()_"
		randomstring = ""

			while i<length do
				randomstring << letters[rand(letters.length)]
				i += 1
			end	
			

return randomstring


	end

def generatesecurepass(genlength)
i = 0
length = Integer(genlength)
input = "!@#$%&+="
mynumbers = "1234567890"

stringlist = ["and", "more", "the", "each", "most","cat","are", "really", "dog", "horse", "pig", "house", "lake", "tree", "apple", 
"greasy", "small", "dirty", "solid", "quick", "hot", "frozen", "slimy", "mostly", "Oakland", "Grizzlies", "oakland", "grizzlies", "Dodge", "dodge", "Kresge",
"kresge", "South", "south", "foundation"]
randomstring = ""


while i < length do

randomstring += mynumbers[rand(mynumbers.length)]
randomstring += input[rand(input.length)]
randomstring += stringlist[rand(stringlist.length)]

mynum = rand(randomstring.length)
randomstring[mynum] = randomstring[mynum].upcase
i += 1
end

randomstring = randomstring[0..(length-1)]
return randomstring
end



def checknum(input)
	return true if input=~ /^\d+$/
	true if Float(input) rescue false
end



end
