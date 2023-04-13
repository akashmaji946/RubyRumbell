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


# split() method can aceept any string, not just one length string
puts
arr = "This is a long string, with many spaces in between"
p arr.split
p arr.split(" ")
p arr.split(",")
p arr.split("a")

puts
arr.split.each do |item| puts item.length end


# WAP to find longest word in a sentence
puts
sentence = "This is a long set of strings, with many spaces in between"
def find_longest(sentence)

    maxl = 0
    maxw = ""

    sentence.split.each do |word|
        if word.length > maxl
            maxl = word.length
            maxw = word 
        end
    
    end

    [maxl, maxw]

end

maxl, maxw = find_longest(sentence)
p maxl,maxw

# split and chars on string object
puts
dialog = "Hey, I am happy"
p dialog.chars
p dialog.split("")

# iterate over a string
dialog.each_char { |ch| puts ch}
puts

# join() method
puts
sentence = "This is a long set of strings, with many spaces in between"

sent_arr = sentence.split(" ")
new_sent = sent_arr.join("$")
puts sentence
puts new_sent
# default is empty char
new_sent = sent_arr.join
puts new_sent


# WAP to customly join an array of items by a delimeter
puts
sentence = "A B C"
# way1
def myjoin1(items, delim = "") 
    str = ""
    items.each { |word|
         str << word << delim
    }
    str[0, str.length-delim.length]
end
# way2
def myjoin2(items, delim = "") 
    str = ""
    last_index = items.length - 1
    items.each_with_index { |word, index|
         str << word 
         str << delim if index < last_index 
    }
    str
end
puts myjoin1(sentence.split)
puts myjoin1(sentence.split, "%$%")
puts myjoin2(sentence.split)
puts myjoin2(sentence.split, "%$%")


# count() method on a ruby string
# counts the total sum of occurences of each distinct char in the param
puts
str = "Aww..this is a very long string in my idea. Wow amazingly good"
puts str.count(".")
puts str.count("a")
puts str.count("Aa")
puts str.count("Ww")
puts str.count("Aw")
# same as above (only distinct chars in the string in any order matters)
puts str.count("Aww")

# WAP to implement custom count()
puts
str = "Aww..this is a very long string in my idea. Wow amazingly good"
def mycount(str, param = "")
    counter = 0
    str.each_char { |ch|
        counter += 1 if param.include?(ch)
    }
    counter
end
puts mycount(str)
puts
puts mycount(str, ".")
puts mycount(str, "a")
puts mycount(str, "Aa")
puts mycount(str, "Ww")
puts mycount(str, "Aw")
# same as above (only distinct chars in the string in any order matters)
puts mycount(str, "Aww")

# index and rindex on strings
puts
str = "this is a string in ruby"
puts str.index("i")
puts str.rindex("i")

# search index from  particular position
puts str.index("i", 3)
puts str.rindex("i", 16)
puts
# we can index a substring also
puts str.index("is", 3)


# WAP for custom index()
str = "this is a string in ruby"
def myindex(str, substr= " ", start = 0)
    len_substr = substr.length
    start.upto(str.length - substr.length){ |index|
         seq = str[index, len_substr]
        #  puts seq, substr
         return index if seq == substr
    }
    return nil 
end
puts
p myindex(str, "is", 3)

puts
typo = "Georg Washinton"
puts typo
typo.insert(5, "e")
puts typo
#typo = "Georg Washinton"
typo.insert(-1, "e!")
puts typo

# squeeze() method in ruby
# removes all duplicates coming in a consecutive way
puts
sentence = "thiss iis a sttttring in   rrrrubyyyy" 
# squeeze doest modify the object
puts sentence.squeeze
puts sentence
sentence.squeeze!
puts sentence

# we can specify (in a substring) what characters to be removed in duplicacy
puts
sentence = "thiss iis a sttttring in   rrrrubyyyy" 
puts sentence.squeeze!("rit")
puts sentence

#  WAP to define own custom squeeze method
puts
sentence = "thiss iis a sttttring in   rrrrubyyyy" 
def mysqueeze(str)
   final_str = ""
   str.chars.each_with_index do |v, i|
        if v == str[i+1]
            next
        else 
            final_str << v
        end
   end
   return final_str
end
puts mysqueeze(sentence)

def mysqueeze2(str, params)
    final_str = ""
    str.chars.each_with_index do |v, i|
         if v == str[i+1] && params.include?(v)
             next
         else 
             final_str << v
         end
    end
    return final_str
end
puts
puts mysqueeze2(sentence, " ")
puts mysqueeze2(sentence, "srity ")

sent = "ttttttttttt hhhhhhhhh iiiiiii sssssss aaaa     thisa"
puts mysqueeze2(sent, "thisa ")


# delete() method in ruby
# deletes all the characters in the param from the string object
puts
# doesnt modify original string
str = "I am a string"
puts str.delete("s")
puts str
# string! deletes
str.delete!("s")
puts str

str = "I am a good"
str.delete!("ao ")
puts str

puts
# WAP to define custom delete() method
str = "I am a string"
def mydelete(str, param)
    final_str = ""
    str.each_char { |ch|
        if !param.include?(ch)
            final_str << ch
        end
    }
    final_str
end
puts mydelete(str, "as ")
puts
def mydelete2(str, param)
    final_str = ""
    str.each_char { |ch| final_str << ch unless param.include?(ch) }
    final_str
end
puts mydelete2(str, "as ")