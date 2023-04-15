# let us create our own gadget class

class Gadget 
   #empty body
end

#NOTE: An empty class is alright to have!

phone = Gadget.new
laptop = Gadget.new

p phone == laptop
p phone.class == laptop.class
p phone.methods.sort == laptop.methods.sort

puts
p phone.class
p phone.class.superclass
p phone.class.superclass.superclass


# empty Gadget class has all its methods derived from Object class
puts
p phone.methods.sort.length
only_phone_methods = phone.methods.sort - Object.methods.sort
p only_phone_methods

puts
p Gadget.ancestors


puts
p phone.object_id, laptop.object_id
# their memory addresses(always change)
p phone, laptop
# all classes in the hirarchy return true
p phone.is_a?(Gadget)
p phone.is_a?(Object)
p phone.is_a?(BasicObject)

#  can we apply a method method_name to an object obj, 
# how to check?
# use:         obj.repond_to?(:method_name)
puts
p phone.respond_to?(:methods)
p phone.respond_to?(:length)
p phone.respond_to?(:class)

# object aliases
puts
laptop2 = laptop
p laptop == laptop2