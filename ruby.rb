# this is a single line comment

# puts prints and inserts a new line
puts "Hello World", "Hello bhacha"
# , prints multiple lines
puts 1, 2, 3


=begin
This is a multiline comment
It is not very widely used
We can however use for documentation
=end

# print prints without a new line
print "hello world"
print "same line"
print "\n"

# p prints text as it is
p "hello says 'hello' but why"
p 'This is really "very \"big\"very" funny again boss'

# dealing with numbers
puts 1
puts 1.67
# we can use _ for bigger integers
puts 99_99_999
puts -123.3221
puts -123999_999.322_1

# valid but not needed to use () with puts
# Order: PEMDAS
puts (1 + 2 * 7)
puts 1 + 2 * 7

# division is floor
puts 10/2   #5
puts 10/3   #3
puts 12.0/3
puts -12/5.0

# dont use .5 use 0.5
# puts  .5 * 2     #error
puts 0.5 * 2

# modulo is %
puts 6 % 2
puts 7 % 2


# add or concat
puts "Hello" + "World"
puts 1 + 6

# exceptions
# its invalid
# puts 'i am ' + 1

# its valid
puts "Hi" * 6

#variables
age = 32
puts age

fname = "Akash"
lname = "Maji"
role = "SDE"
puts fname + " " + lname + " is a " + role

next_role = "Engg"
puts fname + " will be " + next_role + " in next job"

age = age + 1
#error
# puts "I am " + fname + " and I am " + age

#dynamic typing
age = 32
age = "33"
puts "I am " + fname + " and I am " + age

# Name error: names are case sensitive
fav_food = "Sushi"
# puts favfood
puts fav_food


# multiple assignments
a, b, c = 10, 20, 30
puts a, b, c


# swap two variables 
x = 121
y = 212
puts x, y

t = x
x = y
y = t
puts x,y

# swap two variables (the ruby way)
m, n = 123, 321
puts m, n

m, n = n, m
puts m, n 


# shortcuts to assignment
a = 21
a = a + 10
puts a

b = 31
b += 1
puts b
 

c = 100
c *= 100
puts c

name = "Akash"
name += " the great"
puts name


# constants (convention: use all letters in UC)
K = 9.81
puts K

PI = 3.142
puts PI

TAX_RATE = 0.07
TAX_RATE = 0.09   # gives warning, not error
puts TAX_RATE

# invoking methods (using dot operator)
# here str is the receiver
str = "hello world"
puts str.length

puts "hello world".upcase
puts "StringCustom".upcase.downcase

# we can optionally give () with methods
# ruby community generally avoids this
puts str.length()

# methods on int
# in ruby everything is an object
puts 10.next
puts -11.next
puts 10.succ

puts 10.next

# no method error message
puts 10.next
# puts 8.length # error

puts "this is a very very long string that i wrote just now"
    .upcase
    .length 

# gives a new int object
puts 12.next.next.next.pred

# inspect method: every ruby object
puts 12.inspect
puts "Hello".inspect


# p internally calls inspect (below 2 lines are same)
p "hello iam \"loki\" the bad king\n"
puts "hello iam \"loki\" the bad king\n".inspect

# nil is an object that represents nothingness
nothing = nil
puts nothing
p nothing

# puts  return nil after doing printing job
# p returns the value
what_is_the_value = puts "hello again".upcase
p what_is_the_value

# string interpolation using syntax:   #{}
count = 1000
str = "This is a group having #{count} people"
puts str

age = 24
name = "Akash"
str = "#{name} is #{age} years old"
p str


# use string interpolation not string concatenation
# puts name + " is " + age + " yaers old"    #typeerror


# interpolation can handle expressions and calculations too? YES
var1 = 100
var2 = 200
puts "The sum of var1 and var2 is: #{var1+var2}"

puts "I will be #{age+10} years old in 10 years"

# gets method for user input
# this will help us in interacting with the user
# reads till \n (inclusive of \n)

# acronyms:
# gets means get string or input
# puts means put string or puts
# internally:
# object.method is called
# i.e.    <userinput>.gets    is called

puts "Hi buddy! What is your name:"
name = gets
# gets by default also captures \n
puts "Hi #{name}, now I know you"

puts "Hi buddy! What is your full name :)"
# chomp method is used then
name = gets.chomp 
puts "Hi #{name}, now I know you. Wohoooo!"

puts "Great! What is your age now?"
age = gets.chomp    #age is still string needs typecasting
# puts "This means you were born in #{2023-age} year. Pretty cool!"  #error
puts "This means you were born in #{2023-age.to_i} year. Pretty cool!"


# class is a blueprint of an object  
# this will be used as a template/schematic 
# we can create many many objects/instances (in memory) from that class
# objects can have both shared and exclusive methods

puts "hello".class
puts "hello$".class
puts "123".class 
puts 5.class
puts 9_99_999.class

text = "6"
puts text
puts text.class
# new object is created by:      <obj>.to_i
i = text.to_i
puts i 
puts i.class 


# peculiar
str = "15 apples"
stri = str.to_i   # extracts 15
puts stri, stri.class
puts   

str = "apples 15"
stri = str.to_i   # does not extracts 15 return 0
puts stri, stri.class
puts

# similarly we have:  to_s  to_f  to_i
number = 65
puts number.class 
puts number.to_s, number.to_s.class
puts
puts number.to_f, number.to_f.class
puts 

# we can call same method as original type 
salary = 65.78
puts salary.to_f 
puts 100.678.to_f
puts 

# puts 12.23.next   # error
# puts 12.next_float  # error


puts 12.4.next_float  # OK
#chaining here also
puts 12.next.to_s.length

# boolean type => true / false
# TrueClass / FalseClass
puts true
puts 7 <= 8
puts 1 == 0
puts true.class
puts (!false).class

puts "hello" == "hello"


a = 10
b = 20
c = 30
#ternary not there
# puts a==b?c:0

puts 7 == 7.0

# method with args
# boolean methods usually have ? at end of their names (like convention)
puts
puts "Big mac".include? "B"
puts "Big name".include? " "
puts "Big Basket".include? "m"
# ArgumentError
# puts "Happy Boy".include?


# another way
puts "big machine".include?("b")

# put can be thought of as a method
# puts ("Line1", "Line2") #error
puts("This is a line", "this is a new line")

# methods with multiple arguments
puts
puts 100.between?(99, 101)
puts 100.between? 99, 101
puts 100.between? 100,100
puts 8.5.between? 8.0,9.0

# everything in ruby is object
# operators + - * / are just methods as well
puts 1 + 2
puts 1.+(2)

# floor div
puts 10./(2)
puts 10.div(2)

# real div
puts 10.5 / 2.5
puts 10.5./(2.5)

# float methods
puts 10.5.floor
puts 10.9.floor
puts 10.9.floor.class

puts 

puts 10.5.ceil
puts 10.8.ceil
puts 10.2.ceil
puts 10.2.ceil.class

puts 

puts 3.14159.round
puts 3.86.round
puts 3.86.round.class
puts 3.14159.round(2)
puts 3.14859.round(2)
puts 3.14859.round(3)
puts 3.14859.round(3).class

puts

puts 5.35.abs
puts -5.35.abs
puts 35.abs
puts -35.abs








































































































































































