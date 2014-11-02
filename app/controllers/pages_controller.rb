class PagesController < ApplicationController


  def Homepage
  end

  def Page1
  end

  def Page2
  end


  def stringsub
	forminput = params['mystring']

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






end
