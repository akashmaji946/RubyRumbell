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