# we can load using:  
# require "./filename"
# require "libraryfilename"
# no need to .rb extension but we cam stil add
puts
puts "I am inside begin file :)"
puts

# by default require looks in ruby library and NOT in pwd
# so we have to give ./  before and .rb is optional
require "./middle"

# imported only once
require "./middle"
require "./middle"
require "./middle"
require "./middle"


# lets try using imported methods
puts
add(12, 37)
divide(80.5, 5.0)
subtract(3, 8)
multiply(4, 7)

common() 


# we can import as many files as we want
# we can import both ruby library or custom library or both
require_relative "customlib/lib"
require_relative "customlib/lib"
require_relative "customlib/lib"

# lets try using imported methods
puts
adder(12, 37)
divider(80.5, 5.0)
subtracter(3, 8)
multiplyer(4, 7)

common()

puts "I am exiting begin file  :("
