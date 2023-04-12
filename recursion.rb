# recursion be like:   Karthick calling Karthick

# WAP for factorial
puts "Enter a number n:"
n = gets.chomp.to_i

def fact(n) 
    return 1 if n <= 1
    n * fact(n-1)
end

puts fact(n)
puts

# WAP for reversing a string
puts "Enter a string str:"
str = gets.chomp

def reverse(str) 
    if str.length == 1 
        return str
    end
    return str[-1] + reverse(str[0, str.length-1])
end

puts "The reverse of '#{str}' is '#{reverse(str)}'"
puts