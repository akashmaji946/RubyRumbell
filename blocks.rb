
def new_line
    puts
end

# making blocks in ruby

#syntax 1
4.times {
    puts "I am called"
}
new_line
10.times {
    puts "I am doing it again and again"
    puts "I am enjoying this"
}

#syntax 2
new_line
"5".to_i.times do
    puts "Hi"
    puts "bye"
end


#the return value of block is the value itself
new_line
num = 3
count = num.times do
   puts "Hi I am good"
end
puts count

# writing a money_printer program (function)
new_line
def money_printer(count)
    count.times do
        print "Money"
    end
    new_line
end
money_printer(10)
puts "Hi"


new_line
# counting
10.times { |i|
    puts "I am in #{i+1}th loop"
}
new_line
10.times do |j|
    puts "I am again in #{j+1}th loop"
end

# WAP to do counting like 0246810
# if n is k go till 0....2k
def count_please(n)
    n.next.times { |count| print count*2 }
end
new_line
count_please(10)


#upto and downto methods

# trying to understand upto() and downto() methods in Ruby
10.upto(20) { |count|
  puts "I am in #{count}th loop now"
}
puts
20.downto(10) { |count|
  puts "I am again in #{count}th loop now"
}
puts


# writing my own song
def char_botal_vodka(n)
    upper = n
    lower = 1
    
    upper.downto(lower) { |count|
      puts "#{count} botal vodka, kaam mera rojka"
      puts "na mujhe koi roke na kisi ne roka, yooooo"
      puts
    }
end
char_botal_vodka(10)

# step function
# this returns 1
1.step(50, 7) { |i|
    puts "I am in iteration #{i}"
}