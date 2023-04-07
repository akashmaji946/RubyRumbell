
def new_line
    puts
end

# lets define a method
def introduce
    puts "hello world"
    puts "hola worldo"
    puts "namaste duniya"
    new_line
end

# lets invoke them
introduce
introduce()

# method with args
def heap_praise(name)
    puts "#{name} is awesome!"
    puts "I am sure #{name} will succeed"
    new_line
end

heap_praise("Akash")
heap_praise("maji")

def praise_even_more(name, age)
    puts "Hi #{name.upcase}, you are great!"
    puts "Your age is now #{age} years"
    puts "That means, you were born in #{2023-age.to_i}, really cool:)"
    puts "I am sure you will be #{age.to_i + 10} in 2033"
    new_line
end

# as long we provide consistent args (that can be operated as per def) 
# we are okay
praise_even_more('Akash', "24")
praise_even_more('Akash', 24)


#concept of scopes

#global scope
actor = "Diesel"

def fav_star
    #local scope
    actor = "Arnold" 
    puts actor
end

fav_star()
puts actor  #refers global one, local one is gone

# return values
def add_nums(x, y)
    puts "I am adding #{x} and #{y} ..."
    res = x + y
    return res
end

new_line
ans = add_nums(121, 343)
puts "The sum is: #{ans}"


# default return value is nil
def do_nothing
end

new_line
ret = do_nothing
p ret, ret.class


new_line

#implicit return
# the last expression before end is evaluated and its return value is returned
def add_nums_again(x, y)
    x+y 
end

z = add_nums_again(101, 201)

def do_nothing_again
    add_nums_again(101, 222)
end

p add_nums_again(10, 20)
p do_nothing_again
p z


new_line
def nothing
    # puts return nil
    puts "What will be returned?"
end

p nothing

new_line


#optional parameteres

def find_total_cost(bill_amount, tip_percent = 0.1)
    puts "calculating bill...."
    total_amount = bill_amount + bill_amount * tip_percent
    return total_amount
end

puts find_total_cost(100, 0.2)
puts find_total_cost(200)
puts find_total_cost(1000, 1)

new_line

def str_concat(str1 = "", str2 = "")
    puts "concatenating two strings..."
    #implicit return
    str1 + " " + str2
    # "${str1} ${str2}"
end


p str_concat("Hello", "World")
p str_concat("Tiger", "Hai")
p str_concat("Wangchuk")













