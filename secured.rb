# this is a secret page

puts "welcome to secure page"
puts "What is your name:"
name = gets.chomp
puts "What is your age:"
age =  gets.chomp.to_i

def is_eligible(name, age)
    puts "Checking....please wait"
    if age >= 18
        return true 
    else 
        return false
    end
end
yes = is_eligible(name, age)
if yes
    puts "Access Granted"
    load("./transact.rb")
else
    puts "Access Revoked"
end
puts "Thanks, for visting secured page"
puts