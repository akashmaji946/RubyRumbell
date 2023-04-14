# page for doing transaction
def transact
    puts "Hi user!"
    puts "Enter your username:"
    gets
    puts "Enter password:"
    gets
    puts "Enter amount to add to wallet:"
    amt = gets.chomp
    puts "Wallet money #{amt} added."
    puts
    
end

while true
    puts "Want to add money?(Y/N)"
    yes = gets.chomp
    if "YESYesyes".include?(yes)
        transact
    else 
        puts "Thanks for visit"
        puts
        break
    end
end

