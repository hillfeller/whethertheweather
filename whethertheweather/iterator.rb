# daArray = ["haha", "not", "funny"]
# 
# print "daArray = %s" % daArray
# 
# print "\n"
# 
# print daArray.to_s
# 
# CODEWARS- http://www.codewars.com/kata/55c353487fe3cc80660001d4/train/ruby
# 
# def capitals_first(string)
#   converToArray = string.split(" ")
#   
#   removeSpecialChars = converToArray.delete(/\W+[a-zA-Z]+|\d+[a-zA-Z]+/x)
#   
#   string = removeSpecialChars.join(" ")
#   
# 	upcasearray = string.scan(/\b[A-Z]\S*/)
#   lowcasearray = string.scan(/\b[a-z]\S*/)
#   everything = upcasearray + lowcasearray
#   return everything.join(" ")
# end

# def multiply_by x,y,n
# # 
# #   output = []
#   result = []
#   
#   for i in 1..n do 
#   	
#   	result.push(x * y**i)
#   
#   end 
#   
#   return result
#   
# end
# 
# multiply_by(2, 4, 6)
# 
# 
# def round_to_next_5(n)
# 
#  if n%5 == 0
#   	n = n
#   elsif n%5 == 1
#   	n += 4
#   elsif n%5 == 2
#   	n += 3
#   elsif n%5 == 3
#   	n+= 2
#   else n%5 == 4
#   	n+= 1
#   end
#   puts n
# end


# def take list, n
#   list.take(n)
#   return array
# end

# def seven_ate9(str)
# 	str = '165561786121789797'
# 	str.tr("9797", "77")
# 	puts str
# end


# def arr2bin(arr)
#   arr = [1, 2, 3, 4]
# 	sum = arr.reduce :+
#   puts sum.to_s(2)
# end

# ****Below code will provide the sum of an array if it's entirely numeric, and will return the sum in binary. 
# ****If the array is not all numeric, or if it's empty, false will be returned
# def arr2bin(arr)
#   if arr.all? {|a| a.is_a? Integer} 
#   	sum = arr.reduce :+
#     return "%b" % sum
#   elsif arr == 0
#     return false
#   else
#     return false

#Below is how to remove elements in a list that do not stand true for code block
# def reject list, &block
#   list.reject(&block)
# end


#Below is a countdown from 10 to liftoff. Instructions are converted to a string. 
# def liftoff(instructions)
# 		instructions = [1,2,3,4,5,6,7,8,9,10]
# 	  new = (instructions.sort! { |x,y| y <=> x })
# 	  la = new.join(" ")
#     return  la + " liftoff!"
#    
# end
#  
# end

# Create a method first that accepts a list and an optional parameter n. If n is unspecified, it returns just the first element of the list. If n is specified, it returns that number of elements from the beginning of the list.
# 
# If you need help, here's a reference:
# 
# http://www.rubycuts.com/enum-first
# 
# def first list, n=nil
#   if n==nil
#     return list.first
#   else
#     return list[0..n-1]
#   end
# end


# def trigrams(phrase)
# 	phrase = "the quick red"
#   if phrase.length > 3
#     phrase.split(' ').each_cons(3).to_a
#     puts phrase
#   else
#     return " "
#   end
# end

###The following will take an array and return the first elements of the array for which the block
# specified will return true. The method take_while will stop searching once an element returns false. 
# 
# def take_while list, &block
#   list.take_while(&block)
# end

#This will accept a list, run the block over each item and will return the item with the lowest block
#return value
# def min_by list, &block
#   list.min_by(&block)
# end

#Will return the list sorted by the way specified by the input block

# def sort list, &block
#   list.sort(&block)
# end

###Round number to two decimal places
# def round(n)
#   (n.round(2).to_s)
# end

###Method below will provide n!, for n>0. For n=0, return 1, anything else returns nil
# def factorial(n)
#   if n>=0 
#     (1..n).reduce(:*) || 1
#   else
#     return nil
#    end
# end

#Create a method group_by that accepts a list and a block. It should return a hash where the keys are the block return values, and the hash values are arrays of the corresponding items grouped together.
# 
# def group_by list, &block
#   list.group_by(&block)
# end

# def find_missing_number(sequence)
# 	sequence = ("1 3 4 5 6 7 8 9")
# 	newsequence = sequence.split
# 	newsequence.sort
# 	for n in newsequence do 
# 		if sequence[n] > sequence[n-1] + 1
# 			puts false
# 		elsif
			
# end


# def vowel_indices(word)
# 	word = "super"
# 	third = word.split("")
#  	if third.include? ("aeiouy")
# 		print third.map.with_index { |v, i| i (if v == "a" || if v == "e")}.compact
# 	end
# end

# class String
#   def toJadenCase
  	str = "Hello my name is hillary"
  	
  
    puts str.split(" ").map(&:capitalize).join(" ") 
   
    
#   end
# end