
# lets play with if else

if 7 <= 10
    puts "I am in"
end

if 9 >= 10
    puts "I am not in"
end

#dummy returning
def getFromDatabase(user)
    "secretive"
end

puts "Enter your username:"
username = gets.chomp
puts "Enter your password:"
input_pass = gets.chomp
password = getFromDatabase("Akash")

if password == input_pass 
    puts "Congrats #{username}! You have logged in :)"
end


# write a number parity checker
puts
puts "What is your age?"
num = gets.chomp.to_i

if num.odd?
    puts "You are born even year"
end

if num.even?
    puts 'You are born in odd year'
end

# hay what is ur animal
puts
puts "What is ur fav animal?"
fav_animal = gets.chomp
if fav_animal.include?("roo")
    puts "Say roo... rooo..."
end


#truthy vs falsy values
# only 2 things are falsy: 
# false   nil
puts
if "Hello"
    puts "Inside hello check"
end

# exercise question
def do_operation(num)
    if num.odd?
        puts "I am odd"
        return num - 10
    end
    puts "I am even"
    return num + 10

end
puts do_operation(10)
puts do_operation(11)

puts
# if and elsif
puts "Hello What is your fav color?"
color = gets.chomp

if color == "red"
    puts "You should stop"
elsif color == "green"
    puts "You should go"
elsif color == "yellow"
    puts "You should wait"
else
    puts "I dont know yet"
end

# what is your age?
puts
puts "What is ur age?"
age = gets.chomp.to_i
if age < 18
    puts "You are a kid. You cant vote"
elsif age < 65
    puts "You are an adult. You should vote"
else
    puts "You are old. Chacha marne wale ho"
end

# grade checker
puts "Hello, how much did you get?"
marks = gets.chomp.to_i

if marks > 90
    puts "Yayy...you got grade A"
elsif marks > 75
    puts "Yoo..you got grade B"
elsif marks > 60
    puts "Hmm...You got grade C"
elsif marks > 50
    puts "Oh...You got grade D"
elsif marks > 35
    puts "Areyyy....you got grade E"
else 
    puts "Buffalo..you have failed"
end

# codingexercise
puts
puts "What is your fav no:"
num = gets.chomp.to_i

def check_sign(num)
    if num < 0
        # puts "#{num} is -ve"
        return -1
    elsif num > 0
        # puts "#{num} is +ve"
        return 1
    else
        # puts "#{num} is zero"
        return 0
    end
end

def check_sign_again(num)
    if check_sign(num) == -1
        puts "#{num} is -ve"
    elsif check_sign(num) == 1
        puts "#{num} is +ve"
    else
        puts "#{num} is zero"
    end

end

check_sign_again(num)

puts
check_sign_again(-100)
check_sign_again(121)
check_sign_again(0)

# happy grade 
puts
grade = 'A'
if grade == 'A'
    puts 'papa is happy'
else
    puts 'mama is angry'
end


# coding exercise
puts
def is_divisible(num, div1 = 1, div2 = 1)
    divides1 = num % div1 == 0
    divides2 = num % div2 == 0
    divides1 && divides2
end

puts is_divisible(12, 3, 4) 
puts is_divisible(100, 2, 5)


# greater of 3
puts
puts "Enter 3 numbers please: "
x = gets.chomp.to_i
y = gets.chomp.to_i
z = gets.chomp.to_i

if x > y && x > z
    max = x
elsif y > z
    max = y
else 
    max = z
end

puts "The max of #{x}, #{y} and #{z} is #{max}"

# fizzbuzz program
puts
puts "Enter your number:"
num = gets.chomp.to_i

1.upto(num){ |i|
    print "#{i}: "
    if i % 3 == 0
        print "Fizz"
    end
    if i % 5 == 0
        print "Buzz"
    end
    puts
    
}

# agent vinod
puts
def authenticate_agent(agent_code = "", agent_name = "", agent_title = "")

    if agent_code == "007" && agent_name.upcase == "BOND" ||
            agent_title.upcase == "SA"
        puts "Access Granted :)"
    elsif
        puts "Access Denied !"
    end
end

authenticate_agent("007", "Bond", "SA")
authenticate_agent("007", "Bond", "HR")
authenticate_agent("009", "Hawking", "SA")
authenticate_agent("007", "Gosling", "None")
authenticate_agent("010", "new", "SA")
authenticate_agent()
authenticate_agent("007", "bond")
authenticate_agent("010", "vinod", "sA")

# ternanry operator
puts
val = 6 <= 8 ? "Yes it is true" : "No it is false"
puts val

def food_menu(myfood)
    case myfood 
        when "Sushi"
            "haha, i like it"
        when "Takashi"
            "nope, its not so good"
        when "Monato"
            "yupp, its so crispy"
        else
            "yay, its hunger day"
    end
end

myfood("Sushi")









