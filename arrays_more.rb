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

# while and until loops
puts
animals = ["Kangaroo", "Lion", "Tiger", "Leopard", "Bear"]
i = 0
while i < animals.length 
    puts i, animals[i]
    i += 1
end

puts
i = 0
until i == animals.length
    puts i, animals[i]
    i += 1
end

# reverse an array
# reverse! modifies inplace
puts
ar = ["A", "B", "C", "D", "E"]
ar.reverse!
p ar

# adding two arrays
# using + operator (doesnt modify/returns new array)
puts
xs = [11, 23, 34, 56]
ys = [21, 45, 67, 54]
p xs
p xs + ys
p xs

# using concat() method (modifies/returns first array)
puts
xs = [11, 23, 34, 56]
ys = [21, 45, 67, 54]
p xs
p xs.concat(ys)
p xs

# define a custom concat method:   myconcat()
puts
xs = [11, 23, 34, 56]
ys = [21, 45, 67, 54]
def myconcat(arr1, arr2) 
    arr2.each { |elem| arr1 << elem }
    arr1
end
p xs
p myconcat(xs, ys)
p xs

# WAP to get max and min in an array
puts
def max_min(arr) 

    return [nil, nil] if ( arr.nil? || arr.empty? )

    maxe = arr[0]
    arr.each { |elem| maxe = elem if elem > maxe }

    mine = arr[0]
    arr.each { |elem| mine = elem if elem < mine }

    [maxe, mine]

end

def max_min_eff(arr)
    return [nil, nil] if ( arr.nil? || arr.empty? )

    maxe = mine = arr[0]
    1.upto(arr.length-1) do |i|
        if arr[i] > maxe
            maxe = arr[i]
        elsif arr[i] < mine
            mine = arr[i]
        end
    end
    [maxe, mine]

end

elems = [21, 45, 67, 100, 54, 11, 0, 23, 34, 56]
p elems
p max_min(elems)
p max_min_eff(elems)


# find_index() and index() methods are same
puts
elems = [21, 45, 67, 100, 54, 11, 0, 23, 34, 56]
p elems.index(max_min(elems).first)
p elems.find_index(max_min_eff(elems).last)


# select and reject methods
puts
scores = [21, 45, 67, 100, 54, 11, 0, 23, 34, 56]

p scores.select { |score| score >= 50 }
p scores.reject { |score| score <= 49 }

# WAP to filter out all palindromes
puts
palins = ["level", "racecar", "haha", "malayalam", "savages"]
def filter_palins(palins) 
    palins.select do |palin| palin == palin.reverse end
end

p filter_palins(palins)

# partition() method
puts
strs = ["Akash", "Aman", "Boka", "Jonas", "Baras", "Manasu"]
as, bs = strs.partition{ |str| str.include?("k") }
p as, bs





