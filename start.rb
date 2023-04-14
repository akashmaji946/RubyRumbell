# this will demonstrate:     load('filename.rb')

puts "Hi. Welcome to ABCD Bank"

def load_secured_page
    puts "Wait! you  are being redirected to secured payment page..."
    load("secured.rb")
end

while true
    puts "Do you want to go to secured page?(Y/N)"
    yes = gets.chomp
    if "YesYESyes".include?(yes)
        load_secured_page
    else
        break
    end
end

puts "Hi. Thanks for coming to ABCD Bank"
