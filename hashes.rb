# what is a has?
# a data structure to store unordered key-value pairs
# aka maps, hash-maps, dictionaries etc

hash_obj = {}
p hash_obj
p hash_obj.class 

arr_obj = []
p arr_obj
p arr_obj.class

puts
puts hash_obj == arr_obj
puts hash_obj.class == arr_obj.class

puts
hash_obj = {
    "KKR" => ["shreyas", "rinku"],
    "CSK" => ["dhoni", "raina"]
}
p hash_obj["CSK"]
p hash_obj["RCB"]

# symbols in ruby
# they are like strings but begin with :
puts
my_str = "racecare"
my_sym = :racecar

p my_str, my_str.class 
p my_sym, my_sym.class 

p my_str == my_sym



# what if symbols contain whitespace
my_sym = :"this is symbol too"
p my_sym, my_sym.class
# better to use _ then
my_sym = :this_is_also_a_symbol
p my_sym, my_sym.class

puts
# converting from one to other
my_str = "racecare"
my_sym = :racecar
p my_str.to_sym 
p my_sym.to_s
p my_str.to_sym.class
p my_sym.to_s.class


# what is the difference then?
#  Symbol object is lightweight as it has fewer methods
#  String object is heavyweight as it has more methods
#  better to use Symbol objects as keys in hashes in ruby

captains = {
    :KKR => "russel",
    :RCB => "kohli",
    :CSK => "dhoni",
    :DC => "pant"
}
puts 
p captains[:KKR]
p captains[:MI]
p captains["RCB"] #symbol is not same as string, ie gives nil
p captains["CSK".to_sym]

winners = {
    first: "RR",
    second: "DC",
    third: "CSK",
    fourth: "CSK",
    fifth: "KKR"

}
puts
p winners[:fifth]
p winners[:sixth]


# accessing values using [] operator and fetch() method
winners = {
    first: "RR",
    second: "DC",
    third: "CSK",
    fourth: "CSK",
    fifth: "KKR"

}
puts
p winners[:fourth]
p winners.fetch(:fourth)
p winners[:seventh]
# p winners.fetch(:seventh) #KeyError
# we have to specify default value
p winners.fetch(:seventh, "Not Found")
p winners.fetch("haha", "Not Found")

#note: internally   winners[:xyz]   behaves as    winners.fetch(:xyz, nil)

# adding entries to a hash
# we can use:   either     hash[key]=val   or    hash.store(key, val)
# we can use either String or Symbol or bothas key in same hash 
puts
menu = { taco: 23, monaco: 45, chips: 89}
p menu
menu[:sushi] = 28
p menu
menu.store(:tamos, 11)
p menu
menu["kurkure"] = 5
p menu
menu.store("maxx", 10)
p menu

puts
puts menu[:sushi] > menu["maxx"]



# length  ,  empty? ,   nil?    methods on hash
puts
myhash = {}
p myhash.nil?
p myhash.empty?
p myhash.length
puts
myhash = {kaka: "kakaji", dada: "dadaji", mama: "mamaji", nana: "nanaji"}
p myhash.nil?
p myhash.empty?
p myhash.length

# iterating over hash in ruby
# each and each_pair are same, each_pair is old
puts 
myhash.each { |key, value|
  puts key.class 
  # key has type String or Symbol depending upon defn
  # however string interpolation  #{key} converts Symbol to String as below
  puts "The value at key '#{key}' is '#{value}'"
}
puts
myhash.each_pair { |key, value|
  puts key.class
  # key has type String or Symbol depending upon defn
  # however string interpolation  #{key} converts Symbol to String as below
  puts "The value at key '#{key}' is '#{value}'"
}

puts
myhash.each_pair { |item|
  p item, item.class
  #   below 2 lines are same
  puts item[0], item[1]
  puts item.first, item.last
  puts
}

puts

# how can we filter our keys and values separately
# keys() and values() return arrays
p myhash.keys
p myhash.values

puts
myhash.each_key { |key|
   p key, key.class
}
puts
myhash.each_value { |value|
   p value, value.class
}
puts


# WAP to get list of keys and list of values of a hash in a list
# like [[k1, k2, k3], [v1, v2, v3]]
# we can intermix the way we write/store keys
myhash = {
    haha: "i am haha",
    "kaka" => "i am kaka",
    :nana => "i am nana"
}

def keys_values_pair1(hash) 
    keys = hash.keys
    values = hash.values
    [keys, values]
end

def keys_values_pair2(hash) 
    keys = []
    values = []
    for k in hash.keys
        keys << k
    end
    for v in hash.values
        values << v
    end
    [keys, values]
end

def keys_values_pair3(hash) 
    keys = []
    values = []
    hash.each_key {|k| keys << k}
    hash.each_value {|v| values << v}
    [keys, values]
end

p keys_values_pair1(myhash) 
p keys_values_pair2(myhash) 
p keys_values_pair3(myhash) 
puts

# more on hashes
# giving default values to hash
# only works with [] operator, not fetch()
puts
newhash = Hash.new("Not Found")
newhash.store(:banana, 1.06)
newhash[:kiwi] = 11.98
p newhash
p newhash[:kiwi]
p newhash.fetch(:banana)


# p newhash.fetch(:mango) # still KeyError
# becoz we need to specify 2nd parameter if key not found
p newhash[:mango]
p newhash[:watermelon]

# changing default value of key in hash
newhash.default = 0
p newhash[:mango]
p newhash[:watermelon]


# converting hash to array and vice versa
puts
games = {
    :cricket => "MSDhoni",
    :hockey => "MajorD",
    :kabaddi => "pata nhi",
    :football => "Messi"
}
p games
# convert hash to array using:     hash.to_a
# gives array of size hash.length containing [key, value] as elems
p games.to_a
p games.to_a.class
p games.to_a.flatten

puts
ar = [[:cricket, "MSDhoni"], 
[:football, "Messi"], 
[:hockey, "MajorD"],
[:kabaddi, "pata nhi"]
]
# convert array to hash using:     ar.to_h
p ar.to_h
p ar.to_h.class



#NOTE:
# key value pairs in hash need not be sorted
# but ruby internally maintains order

# sorting a hash
# default: by key

# use sort() 
# default ascending order
# doesnt cause mutation
puts
games = {
    :cricket => "MSDhoni",
    :hockey => "MajorD",
    :kabaddi => "pata nhi",
    :football => "Messi"
}

#asc order of keys
p games
# below two are same
p games.sort
# p games.sort_by {|k,v| v} #same as above
p games.to_a.sort
p games

# desc order of keys
puts
p games
# below two are same
p games.sort.reverse
# p games.sort_by {|k,v| v}.reverse #same as above
p games.to_a.sort.reverse
p games


puts
games = {
    :cricket => "MSDhoni",
    :kabaddi => "pata nhi",
    :hockey => "MajorD",
    :football => "Messi"
}
p games
# ascending order
p games.sort_by {|k,v| v}
# descending order
p games.sort_by {|k,v| v}.reverse
p games
puts


# key?  and  value? method
# checks if that key or value exists or not
# keys cant repeat, values can
puts
companies = {
    tata: "safari",
    kia: "thar",
    ford: "F-170",
    toyota: "fortuner",
    mahindra: "thar"
}
# brackets around key? and value? predicates are optiional, 
puts
p companies
p companies.key? :tata
p companies.key? :skoda
puts
p companies.value? "safari"
p companies.value? "dicor"
p companies.value? "thar"


# calculate total bill
puts
def total_bill(price, tax, tip)
 total_amount = price + price * tax + price * tip
end
# here: order of arguments matter
puts total_bill(100, 0.18, 0.09)

#IDEA: we can use ruby hash object  instead
def total_bill_again(bill)
  total_amount = bill[:price] + bill[:price] * bill[:tax] + bill[:price] * bill[:tip]
end
bill = {
    price: 100, 
    tax: 0.18,
    tip: 0.09
}
puts total_bill_again(bill)
puts
# funny but interesting: we can omit () in func({....})
# and just call:      func ....
puts total_bill_again({
    price: 100, 
    tax: 0.18,
    tip: 0.09
})
# puts total_bill_again {price: 100, tax: 0.18, tip: 0.09}
puts total_bill_again( price: 100, tax: 0.18, tip: 0.09 )
puts total_bill_again price: 100, tax: 0.18, tip: 0.09 




# Ruby has implicit hash parameters, so you could also write
# def my_method(options = {}) 
# my_method(:width => 400, :height => 50, :show_border => false)

# and with Ruby 1.9 and new hash syntax it can be
# my_method( width: 400, height: 50, show_border: false )


# delete method on ruby hash
# takes one paraeter(key) and deletes it from hash(mutation) and return that value
puts
companies = {
    tata: "safari",
    kia: "thar",
    ford: "F-170",
    toyota: "fortuner",
    mahindra: "thar"
}
p companies
p companies.delete(:mahindra)
p companies


puts
# WAP to coun the frequency of each word in a string
puts
story = "this is a very very strange thing that this is a nice play and a good thing"
def count_freq(string)
    words = string.split(" ")
    count = Hash.new(0)
    words.each { |word| count[word] += 1 }
    count
end
p count_freq(story)

#merging two hashes using merge
# merge() doesnt mutate the first hash

hash1 = {
    a: 12,
    b: 13,
    c: 15
}

hash2 = {
    c: 17,
    d: 6,
    e: 100
}
puts
p hash1.merge(hash2)
p hash2.merge(hash1)

# in case of common key k oh h1 and h2, 
# the value v of k of second hash h2 will be used
# in case of h1.merge(h2)
# h1 and h2 are not mutated

# for mutation use merge!
hash1 = {
    a: 12,
    b: 13,
    c: 15
}

hash2 = {
    c: 17,
    d: 6,
    e: 100
}
puts
p hash1
p hash1.merge!(hash2)
p hash1


# select and reject on hashes
myhash = {
    a: 12,
    b: 13,
    c: 15,
    d: 10,
    e: 12,
    f: 17
}
puts
p myhash
p myhash.select {|k, v| v > 13 }
p myhash.reject {|k, v| v <= 12 }
p myhash.select {|k, v| k.to_s > "c"}
p myhash.select {|k, v| "abcde".include?(k.to_s)}

