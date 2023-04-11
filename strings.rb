# strings in ruby are two types
# single comma & double comma
puts
# double with do string processing
str1 = "This is a double line string\nas it has a line break"
puts str1


puts
# single will print as it is
str2 = 'this a single line athough \n is present'
puts str2

# docstring
docstring = <<DOC
this is a doc string in ruby
     this will be quite amazon..... :)
           i am very happy.
    - William K Shakespeare
DOC
puts docstring

# unless construuct
# unless means =>     if not
puts
raining = true
unless raining == false
    puts "It is raining"
end

# string comparisions
a = "hello"
b = "Hello"
c = "hello"

# Order => ....0...9... A ...... Z ...a .....z
puts
puts a == b 
puts b == c  
puts c == a  
puts a == "hello"
puts a.upcase == "HELLO"
puts
puts "a" < "A"
puts "abc" < "abd"

# string concatenation
# multiple ways

# using + operator (no mutation)
puts
first_name = "Akash"
last_name = "Maji"
puts first_name
puts last_name 
puts first_name + last_name
puts first_name
puts last_name 

# using concat operator (mutation)
puts
first_name = "Akash"
last_name = "Maji"
first_name.concat(last_name)
puts first_name
puts last_name

# using prepend method (mutation)
puts
first_name = "Akash"
last_name = "Maji"
first_name.prepend(last_name)
puts first_name
puts last_name

# using += operator (create new object and reassign)
puts
first_name = "Akash"
last_name = "Maji"
puts first_name
puts last_name
first_name += last_name
puts first_name
puts last_name

# using shovel opeerator <<
first_name = "Akash"
last_name = "Maji"
puts first_name
puts last_name
first_name << last_name
puts first_name
puts last_name

#note: we can cascade << opr
puts
name = "Hello"
greet = "Welcome !"
name << " Akash" << "Maji " << greet
puts name, greet


puts
# check if one string is longer than other
def one_longer(s, t)
    s.length != t.length
end

puts one_longer("Hey", "hii")
puts one_longer("Hello", "helo")
puts one_longer("", "")

# indexing or slicing into a string
# does not mutate the string
puts 
story = "Once upon a time in Mumbai"
# indexing start at 0 (forward)
puts story[0]
puts story[1]
puts story[4]

# negative indexing starts from -1 (backwards)
puts story[-6]
puts story[-1]
puts story[-4]

# under the hood, slice() method is responsible
puts story.slice(0)
puts story.slice(8)
puts story.slice(-1)
puts story.slice(-6)

# invalid indexing gives nil
puts
p story[100]
p story[story.length]
p story[-100]
p story[-story.length-1]

# lets loop forward and backward
puts
0.upto(story.length-1) do |i|
    print "#{story[i]}"
end

-1.downto(-1*story.length) do |i|
    print "#{story[i]}"
end
puts

puts
# find the sum of all digits of a string
def sum_digits(str)
    sum = 0
    0.upto(str.length-1) do |i|
        sum += str[i].to_i 
    end
    puts "Sum of digits in #{str} is #{sum}"
end

puts sum_digits("12345")
puts sum_digits("001010101")
puts sum_digits("")

puts
#check if first and last char are same or not
def check_char(str)
    # if str.length      => wont work as "str.length" gives 0 which is not falsy 
    if str.length > 0    
        return str[0] == str[-1]
    end
    return false
end

puts check_char("")
puts check_char("helloh")
puts check_char("Akasha")
puts check_char("a")
puts check_char("AMA")
puts


# slicing can take a part of string out
# SYNTAX:-  string.slice(start_index, length_of_substring)

puts
story = "Once Upon A Time in Mumbai Dobara..."
puts story[0,4]
puts story[5,6]

puts story.slice(0, 4)
puts story.slice(5, 6)

puts

puts story[-3, 3]
puts story[-16, 13]

puts story.slice(-3, 3)
puts story.slice(-16, 13)

puts

# strings are mutable
str = "I love blueberry pie"
puts str 
str[0] = "We"
puts str 
str[3, 4] = "hate"
puts str
str[8,4] = "red"
puts str
str[8,3] = "cherry"
puts str
str[0, 7] = "I love again"
puts str

# insert modifies the string(Mutate)
puts
str = "Akash Maji"
str.insert(6, "M")
puts str
str.insert(-5, " ")
puts str

# methods and their bangs
puts
mssg = "this is a all in lowercase string"
puts mssg
puts mssg.upcase
puts mssg
puts mssg.capitalize
puts mssg

# ! with methods cause mutatiion
puts
msg = "this is a DANGEROUS String"
msg.downcase!
puts msg
msg.capitalize!
puts msg
msg.upcase!
puts msg

