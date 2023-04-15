# classes play an important role in ruby
puts 5.class
puts 1.2.class

p 5.class.superclass.superclass.superclass
p 2.class.ancestors
p 2.class == 2.4.class
p 3.class == 9.class


# methods method to check all the available methods in ruby
puts
p 5.methods.length  #137

# find all common methods in Integer and Float class
puts
integer_methods = 10.methods
float_methods = 10.10.methods
common_methods = integer_methods & float_methods
p common_methods.length

puts
array_methods = [1, 2, 3].methods.sort
hash_methods = {key: "value"}.methods.sort
p array_methods & hash_methods
p array_methods - hash_methods
p hash_methods - array_methods

