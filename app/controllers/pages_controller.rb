class PagesController < ApplicationController


  def Homepage
  end

  def Page1
  end

  def Page2
  end


  def stringsub
  	@@forbiddenchars = params['forbiddenbox']
	forminput = params['mystring']
	genlength = params['lengthtomake']
	@formstring = forminput
	testvariable = String.new(forminput)

	manywords = jeremyscheck(testvariable)
	
	
	@testentropy = entropy2(forminput)

	myentropy = entropy2(forminput)





if manywords


@mikesdisplay=jeremysalg(testvariable)

else

	mikesoutput = String.new(mikesalgorithm(forminput))

	if mikesoutput.length < 1
	mikesoutput = "Invalid Entry"
	end

	@mikesdisplay = mikesoutput

end





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
	@lengthsecurepass = "Invalid Length"
	@lengthletterpass = "Invalid Length"
end

@inputlength = mynum






#set variables from input

inputstring = String.new(forminput)
inputscore = 0
mylength = inputstring.length
lengthstring = ""
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
	inputscore += 1
end
if hasnum 
	inputscore += 1
end

if mylength > 7
	lengthstring = "Length Status: Very Long"
	inputscore += 1
end
if mylength > 14
	inputscore += 2
end

inputscore += myentropy.round
#length 1/2
#special 1/1
#upper 1/1
#number 1/1
#entropy 1/?



@upperscore = hasupperstring
@myinputscore = inputscore
@lengthscore = lengthstring
@numberscore = hasnumstring
@specialscore = hascharstring
#insert algorithms here
  




  end

def show

end


	def mikesalgorithm(userinput)
	myString =  String.new(userinput)


testString = myString.length
puts testString
puts myString
ranA= "@&8Aa*"
ranB = "8Bb*"
ranC = "(<Cc"
ranD = ")>}]Dd"
ranE = "3Ee["
ranF = "Ff45"
ranG = "Gg6"
ranH = "4#Hh"
ranI = "!iI"
ranJ = ";Jj"
ranK = "(Kk"
ranL = "7<Ll"
ranM = "#Mm"
ranN = "^Nn"
ranO = "0Oo"
ranP =")Pp"
ranQ = "0Qq"
ranR ="/?Rr"
ranS = "$5Ss"
ranT ="+Tt"
ranU = "^vV"
ranV ="^VvuU"
ranW ="Ww~"
ranX = "#%*Xx"
ranY = "vV>"
ranZ = "Zz>/"
ranOne = "!"
ranTwo = "+"
ranThree = "#"
ranFour = "$"
ranFive = "%"
ranSix = "^"
ranSev = "&"
ranEig = "*"
ranNin = "("
ranZero = ")"



i=0

ranNum = rand(10)
#increments random number so that it doesn't equate to zero
ranNum += 1
 

      while i<myString.length do
        #checks if random number is even or odd
        
        
         #   puts ranNum
            ranNum += 1
         if ranNum % 2 == 0 then
          ranNumBoo = "even"
            #puts "even" 
         elsif ranNum % 2 == 1 then
          ranNumBoo = "odd"
            #puts "odd"
         end
         
         #secRanNum = ""
         #secRanNum = ranNum + rand(2)
         #ranNum += secRanNum
           
      #puts ranNum
        if ranNumBoo == "odd" then
            
              if myString[i] ==  "a" then
                randomString = ranA[rand(ranA.length)]
                 myString[i] = randomString
              elsif myString[i] == "b" then
                 randomString = ranB[rand(ranB.length)]
                 myString[i] = randomString
              elsif myString[i] == "c" then
                randomString = ranC[rand(ranC.length)]
                 myString[i] = randomString
             elsif myString[i] == "d" then
                randomString = ranD[rand(ranD.length)]
                 myString[i] = randomString
             elsif myString[i] == "e" then
                randomString = ranE[rand(ranE.length)]
                 myString[i] = randomString
             elsif myString[i] == "f" then
                randomString = ranF[rand(ranF.length)]
                 myString[i] = randomString
             elsif myString[i] == "g" then
                randomString = ranG[rand(ranG.length)]
                 myString[i] = randomString
             elsif myString[i] == "h" then
                randomString = ranH[rand(ranG.length)]
                 myString[i] = randomString
             elsif myString[i] == "i" then
                randomString = ranI[rand(ranI.length)]
                 myString[i] = randomString    
             elsif myString[i] == "j" then
                randomString = ranJ[rand(ranJ.length)]
                 myString[i] = randomString     
             elsif myString[i] == "k" then
                randomString = ranK[rand(ranK.length)]
                 myString[i] = randomString
              elsif myString[i] == "l" then
                randomString = ranL[rand(ranL.length)]
                 myString[i] = randomString
              elsif myString[i] == "m" then
                randomString = ranM[rand(ranM.length)]
                 myString[i] = randomString  
              elsif myString[i] == "n" then
                randomString = ranN[rand(ranN.length)]
                 myString[i] = randomString
              elsif myString[i] == "o" then
                randomString = ranO[rand(ranO.length)]
                 myString[i] = randomString
              elsif myString[i] == "p" then
                randomString = ranP[rand(ranP.length)]
                 myString[i] = randomString
              elsif myString[i] == "q" then
                randomString = ranQ[rand(ranQ.length)]
                 myString[i] = randomString
              elsif myString[i] == "r" then
                randomString = ranR[rand(ranR.length)]
                 myString[i] = randomString
              elsif myString[i] == "s" then
                randomString = ranS[rand(ranS.length)]
                 myString[i] = randomString
              elsif myString[i] == "t" then
                randomString = ranT[rand(ranT.length)]
                 myString[i] = randomString
              elsif myString[i] == "u" then
                randomString = ranU[rand(ranU.length)]
                 myString[i] = randomString
              elsif myString[i] == "v" then
                randomString = ranV[rand(ranV.length)]
                 myString[i] = randomString
              elsif myString[i] == "w" then
                randomString = ranW[rand(ranW.length)]
                 myString[i] = randomString
              elsif myString[i] == "x" then
                randomString = ranX[rand(ranX.length)]
                 myString[i] = randomString
              elsif myString[i] == "y" then
                randomString = ranY[rand(ranY.length)]
                 myString[i] = randomString
              elsif myString[i] == "z" then
                randomString = ranZ[rand(ranZ.length)]
                 myString[i] = randomString
              elsif myString[i] == "1" then
                randomString = ranOne[rand(ranOne.length)]
                 myString[i] = randomString    
              elsif myString[i] == "2" then
                randomString = ranTwo[rand(ranTwo.length)]
                 myString[i] = randomString
              elsif myString[i] == "3" then
                randomString = ranThree[rand(ranThree.length)]
                 myString[i] = randomString
              elsif myString[i] == "4" then
                randomString = ranFour[rand(ranFour.length)]
                 myString[i] = randomString
              elsif myString[i] == "5" then
                randomString = ranFive[rand(ranFive.length)]
                 myString[i] = randomString
              elsif myString[i] == "6" then
                randomString = ranSix[rand(ranSix.length)]
                 myString[i] = randomString
              elsif myString[i] == "7" then
                randomString = ranSev[rand(ranSev.length)]
                 myString[i] = randomString
              elsif myString[i] == "8" then
                randomString = ranEig[rand(ranEig.length)]
                 myString[i] = randomString
              elsif myString[i] == "9" then
                randomString = ranNin[rand(ranNin.length)]
                 myString[i] = randomString
              elsif myString[i] == "0" then
                randomString = ranZero[rand(ranZero.length)]
                 myString[i] = randomString       
              else 
              end
        else  
         
        end
        # increments i by 1
      i = 1+i
      
      end
length = myString.length
puts length
   

return myString

	end


	def evaluatepass(password)




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

def entropy2(s)
entropy =  s.each_char.group_by(&:to_s).values.map { |x| x.length / s.length.to_f }.reduce(0) { |e, x| e - x*Math.log2(x) }
entropy = entropy.round(2)
return entropy
end



def jeremyscheck(myvar)
	
	checker = myvar.include? " "

    if checker 
    	return true
    else
    	return false
    end

end

#jeremys stuff
def jeremysalg(start)
sub = start.split(" ")
        count = (start.length - start.gsub!(/\s+/, "").length + 1) * 0.4
        count = count.to_i

        if count == 0
        
        end
        size = sub.length - 1
    
            while count !=0 
                randPick = rand(sub.length)
                sub[randPick] = scramble(sub, randPick)
                count = count - 1
            end

            for i in 0..size
                if sub[i].match(" ")
                    sub[i] = sub[i].strip
                else
                    sub[i] = sub[i].upcase
                    #singleString = sub[i].split("")
                    #singleCharacter = singleString[0]
                    #sub[i] = singleCharacter.join("")
                end
                
                if rand(4) == 0
                   sub[i] = symbol(sub, i)
                end

            end

        return sub

	end


def single(start)
        start = start.split("").shuffle().join()       
        return start
    end


    def short(sub)
        finish = sub.shuffle().join()
        return finish
    end


    def scramble(sub, randPick)
        size = sub[randPick].length-1
        num = Array.new
        strS = sub[randPick].split("")
        strF = ""

        for x in 0..size
            num = num.concat([x])
        end
        
        for i in 0..size
            r = rand(size - i)
            strF += strS[r]
            num.delete_at(r)
        end

        return sub[randPick].replace(strF).downcase.concat(" ")
    end

def symbol(sub, i)
    symbols = ['-', '!', '@', '#', '$', '%', '^', '&', '*', '?']
    return sub[i].concat(symbols[rand(9)])
    end





end
