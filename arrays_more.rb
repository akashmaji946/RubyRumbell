# refresher on blocks

# times method
puts
5.times do
    puts "Hello I am Akash"
end
puts
5.times do |i|
    puts "#{i} times 10 is #{10*i}"
end
# each method
puts
(1..10).each { |num|
    puts "Square of #{num} is #{num*num}"
}

words = ["Hello", "My", "Name", "Is", "Akash", "Maji"]
puts
words.each do |word|
    puts "Word '#{word.capitalize}' has length #{word.length}"
end

puts
new_words = []
words = ["Hello", "My", "Name", "Is", "Akash", "Maji"]
words.each { |word|
    new_words.push(word.upcase)
}
p words
p new_words

# WAP to filter out odds
puts
nums = [1, 4, 2, 8, 12, 35, 79, 90, 101, 32]
def filter_odds(nums)
    odds = []

    nums.each { |num|
    if num.odd?
            odds << num
    end
    }
    return odds
end
p nums
odds = filter_odds(nums)
p odds

puts
# WAP to separate out evens and odds
nums = [1, 4, 2, 8, 12, 35, 79, 90, 101, 32]
def separate_evens_odds(nums)
    evens = []
    odds = []
    nums.each { |num| num.even? ? evens << num : odds << num }
    [evens, odds]
end
evens, odds = separate_evens_odds(nums)
p evens, odds


# nested each loop on arrays
puts
# combinations

colors  = ["red", "green", "blue", "white", "black"]
vehicles = ["car", "truck", "bus", "metro"]

colors.each do |color|
    vehicles.each do |vehicle|
        puts "I was going in a #{color} #{vehicle}"
    end
end

# each_with_index() method 
puts
nums = [11, 21, 13, 42, 53, 65, 72, 81, 98, 109]
sum = 0
nums.each_with_index do |v, i|
    puts "Index and Value are #{i} and #{v}"
    sum += i*v
end
puts "The sum is #{sum}"


# for loop in ruby
puts
lists = ["KCR", "KMP", "SMP", "TNH"]
for list in lists
    p list 
end

# print product of i and v if i > v
puts
values = [-1, 3, 1, 3, 45, 6, 5, 6, 10, 9, 9]
values.each_with_index { |value, index|
    if index > value
        puts "Match at #{index}.\
 The product of #{index} and #{value} is #{index*value}"
    end

}
