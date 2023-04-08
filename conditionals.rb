
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













