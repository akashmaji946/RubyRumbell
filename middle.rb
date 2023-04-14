puts "Loaded ...... middle.rb"
puts "I am a line from middle.rb"
puts 'You can call me (require) as many times as you want'
puts "But I will be imported/executed only once"

# lets define some methods in here

def add(x, y)
  puts "#{x} plus #{y} is #{x+y}"
end

def subtract(x, y)
    puts "#{x} minus #{y} is #{x-y}"
end

def multiply(x, y)
    puts "#{x} times #{y} is #{x*y}"
end

def divide(x, y)
    puts "#{x} divided by #{y} is #{x/y}"
end

def common
    puts
    puts "I am from middle.rb"
    puts "I am the recent import"
    puts
end