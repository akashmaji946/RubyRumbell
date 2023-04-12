# loops => a sequence od instructions is executed as long as a condition is true
        # or until a condition is false


 # WAP to print 1....10 
 # while loops in ruby       
count = 1
puts count
puts
while count <= 10
    puts count
    count += 1 
end
puts
puts count

# WAP to print
# a
# aa
# aaa
# aaaa
# aaaaa
puts
str = "a"
while str.length <= 5
    puts str
    str << "a"
end
puts

# WAP to print table of number n from 1...10
puts "Enter a number N:"
N = gets.chomp.to_i 
i = 1
while i <= 10
    puts "#{N}*#{i}=#{N*i}"
    i += 1
end
puts "Thanks!"

# until loop => just opposite to while loop
# until === while not

# WAP to print 10 to 1
puts
puts "10 to 1 going..."
start = 10
until start == 0
    puts start
    start -= 1
end
puts

# WAP to print table of n uptil m times
puts
puts "Enter number N:"
num = gets.chomp.to_i
puts "Enter limit M:"
m = gets.chomp.to_i 
j = 1
until j > m
    puts "#{num}*#{j}=#{num*j}"
    j += 1
end
puts

# NOTE : prefer while loop (common in most languages)

# fizzbuzz using while loop
puts
puts "Enter n value:"
n = gets.chomp.to_i 
puts

def fizzbuzz(n)
    i = 1
    while i <= n 
        if i % 3 == 0 && i % 5 == 0
            puts "FizzBuzz"
        elsif i % 3 == 0
            puts "Fizz"
        elsif i % 5 == 0
            puts "Buzz"
        else 
            puts i 
        end 
        i = i + 1
    end 
    puts "Thanks!"
end

fizzbuzz(n)
puts

# next & break keyword

# next    :will skip current iteration and take us to next iter
str = "I like to earn $ and more $ will help me earn even more $ then"
si = 0
ei = str.length - 1
puts si, ei
while si <= ei 
    if str[si] != "$"
        si += 1
        next # just like 'continue' keyword in other languages
    end
    puts "$ found at #{si}"
    si += 1
end
puts

# break :will end current loop entirely there only and take to next instr
str = "I will exit as soon as I see a $ anywhere in this string"
si = 0
ei = str.length - 1
while si <= ei
    if str[si] == "$"
        break
    end
    si += 1
end
if si <= ei
    puts "$ found at index #{si}"
else
    puts "$ not there"
end
puts



