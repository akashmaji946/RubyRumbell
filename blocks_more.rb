# what is a block?
# an attachment to a method having no independent existence
# block is not an object in ruby but an addendum
puts
5.times { |i|
    puts "Hello World. I am printing it #{i+1}th time"
}

puts
first_evens = [0, 2, 4, 6, 8]
first_evens.each do |num| puts num**3 end

puts
p first_evens
first_odds = first_evens.map {|val| val+1}
p first_odds
puts

# lets play with yield
# yield transfers control to block ans wait till finish
# yield can be invoked as many times as needed with a method to which we attach a block
def my_block_method 
    puts "I am inside the function"
    yield
    puts "I am exiting function"
    "end" #return value of func
end
puts my_block_method {
    puts "I am inside block"
}

puts

def my_block_method2
    puts "I am inside the function 2"
    yield
    puts "I am exiting function 2"
    yield #return  value is nil
end
p my_block_method2 {
    puts "I am inside block 2"
}

puts 
def my_block_method3
    puts "I am inside the function 3"
    yield
    puts "I am exiting function 3" 
    yield #return  value is   "I am inside block 3"
end
p my_block_method3 {
     "I am inside block 3"
}
puts
def my_block_method4
    puts "I am inside the function 4"
    yield
    puts "I am exiting function 4" 
    adj = yield
    puts "I am very #{adj}"
end
p my_block_method4 {
     "I am handsome"
}

# how to check if a block is given or not
# use block_given? 
puts
def conditional_block_exec
    puts "I am inside main method"
    ret = yield
    puts 'I am exiting main method'
    return ret
end

# p conditional_block_exec #error: LocalJumpError
p conditional_block_exec { 

    puts "I am inside block" 
    "Block1 End"
}

# how to check if a block is given or not
# use block_given? 
puts
def conditional_block_exec2
    puts "I am inside main 2 method"
    ret = yield if block_given?
    puts 'I am exiting main 2 method'
    return ret
end


p conditional_block_exec2
p conditional_block_exec2 { 

    puts "I am inside block 2" 
    "Block2 End"
}

# passing parameters to blocks
puts
def pass_param_block
    puts "Wait, the work is being done."
    ret = nil
    if block_given?
        ret = yield "Akash"
    end
    puts "You calculated the value as #{ret}." unless ret.nil?
    return  ret
end

p pass_param_block { |name|
    # dont use return keyword inside block
    name.upcase 
}

puts
puts
def pass_param_block2(param=nil)
    puts "Wait, the work is being done again."
    ret = nil
    if block_given?
        ret = yield param
    end
    puts "You calculated the value again as #{ret}." unless ret.nil?
    puts "Hi, your work is done"
    return  ret
end

p pass_param_block2 { |name|
    # dont use return keyword inside block
    puts "Inside logic"
    name.upcase unless name.nil?
}
puts
p pass_param_block2("akash") { |name|
# dont use return keyword inside block
puts "Inside logic"
name.upcase unless name.nil?
}
puts
p pass_param_block2("akash")
puts