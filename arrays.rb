
# arrays  :basic buiding block of a prog lang
#         :a construct that is used to store a sequence of ordered objects
puts
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p arr

new_arr = ["hello", "world", arr, 12.8, 13, true, nil]
p new_arr 

# tabular data in 2d array
puts
spreadsheet = [
    ["Student", "Marks", "Grade", "Pass"],
    ["Akash", 98.9, 'A', true],
    ["Raju", 45.7, 'F', false]
]

p spreadsheet
f, s = spreadsheet
p f, s


# another way to write string array
puts
a = %w[Jack Jill James John Jones Jonas]
p a
b = ["Jack", "Jill", "James", "John", "Jones", "Jonas"]
p b

# arrays a and b are same contentwise
puts a == b

puts
def three_colors(r, b, c)
    [r.upcase, b.upcase, c.upcase]
end

red, blue, green = three_colors("red", "blue", "green")
p red, blue, green

# this will return an empty array
puts
def empty_arr
    []
end
emp = empty_arr
p emp

# array indexing
puts
fruits = ["apple", "banana", "mango", "guava"]
p fruits
# using [] indexing
puts
puts fruits[0]
p fruits[fruits.length-1]
puts fruits[-1]
puts fruits[-fruits.length]
puts
p fruits[fruits.length]
p fruits[-fruits.length-1]
p fruits[100]
p fruits[-100]

# getting range of elems
p fruits[0, 3]
p fruits[-2, 1]


# using slice() method
puts
puts fruits.slice(0)
puts fruits.slice(-1)
# slice method with 2 params gives a subarray
p fruits.slice(0, 3)
p fruits.slice(-2, 1)

# weird [] method
puts
puts fruits.[](0)
puts fruits.[](-1)
# [] method with 2 params gives a subarray
puts
p fruits.[](0, 3)
p fruits.[](-3, 2)


# fetch method is used to provide default values in case of IndexError
airports = ["CCU", "DEL", "BOM", "MDR"]
p airports[100] # nil
# p airports.fetch(100) # IndexError
p airports.fetch(100, "")



#  values_at() method : variable length argument method
# retuns all the values we specify
puts
lists = ["DPS", "KPS", "KV", "NSCBPS"]
p lists.values_at(0, 1, 2, 3)
p lists.values_at(0, -1)
p lists.values_at(-1, -2, -lists.length)
p lists.values_at(0, 0, -1, -1, lists.length, -lists.length)

puts
p lists[0, lists.length]
# 100 elems not there, so get as far as we can
p lists[0, 100]
p lists[-lists.length, lists.length]


# accessing and overwriting array elements
puts
schools = ["DPS", "KPS", "KV", "NSCBPS"]
schools[0] = "DPS-R"
p schools
schools[-1] = "NBPS"
p schools
schools[0,3] = ["A", "B", "C"]
p schools
schools[-1, 1] = ["D"]
p schools
schools[0,2] = ["ABC", "DEF", "GHI", "XYZ"]
p schools
schools[0, 4] = ["A", "B"]
p schools
schools[0, 4] = ["No school"]
p schools
schools[0, 2] = ['AA', "BB"]
p schools
schools[3] = "CC"
schools[5] = "DD"
schools[10] = "GG"
p schools


# first() and last() methods
puts
items = ["Akash", "Maji", "is", "a", "student"]
p items.first
p items.last


#string play: split into two halves
puts
def split_array(arr)
    len = arr.length
    n1 = (len+1)/2
    n2 = len - n1
    part1 = arr[0, n1]
    # part1 = arr.first(n1)
    part2 = arr[n1, n2]
    # part2 = arr.last(n2)
    [part1, part2]
end
p split_array(["A", "B", "C", "D", "E"])
p split_array(["A", "B", "C", "D"])
p split_array(["A", "B"])
p split_array(["A"])
p split_array([])


# some common methods in array
puts
str_arr = ["A", "B", "C", "D", "E", "A", "C", "A", "G"]
puts str_arr.count #9
puts str_arr.count('A') #3
puts str_arr.count("C") #2
puts
puts str_arr.size
puts str_arr.length
puts

p str_arr.first 
p str_arr.first(3)
p str_arr.first(0)
p str_arr.first(1)
p str_arr.first(str_arr.length)
puts
p str_arr.last 
p str_arr.last(3)
p str_arr.last(0)
p str_arr.last(1)
p str_arr.last(str_arr.length)

# predicate methods for arrays
c = ["a","b", "c"]
puts c.empty?
puts c.nil?
c = []
puts c.empty?
puts c.nil?
c = nil
# puts c.empty? #NoMethodError
puts c.nil?

# spaceship operator:     <=>
# <=>   returns 0, -1, 1
# 0 when LHS = RHS
# 1 when LHS > RHS
# -1 when LHS< RHS
puts
p 1 <=> 1
p 2 <=> 3
p 3 <=> 1
p [1, 2, 3] <=> [1, 2, 3] #0
p [1, 10] <=> [1, 2, 30] #1
p [] <=> [1] #-1
p [1, 2] <=> [1] #1
p [] <=> [] #0
p nil <=> nil #0
#incomparable givs nil
p 1 <=> nil 
p 1 <=> [1, 2]
p [nil, 1, 2] <=> [nil, 1, 2]


# push() method
puts
iits = ["bombay", "madras", "delhi", "kharagpur"]
p iits
iits.push("kanpur")
p iits
iits.push("roorkee", "guwahati")
p iits

# shovel << operator
puts
nits = ["trichy", "durgapur", "rourkela", "surathkal"]
p nits
nits << "warangal"
p nits
nits << "raipur" << "bhopal"
p nits


# insert() and pop() method
puts
colleges = ["lnct", "tit", "oriental"]
p colleges
colleges.insert(colleges.length, "sams")
p colleges
colleges.insert(0, "aims")
p colleges
colleges.pop 
p colleges 
puts colleges.pop
p colleges
# popping multiple values
p colleges.pop(2)
p colleges
p colleges.pop(1)
p colleges

puts
credit_card_transactions = [19.99, 29.43, 3.87]

credit_card_transactions.insert(1, 49.99)
p credit_card_transactions

credit_card_transactions.insert(0, 1.23, 4.56, 7.89)
p credit_card_transactions

p [1, 2, 3].insert(8, 1000)


# shift and unshift method
puts
units = ["meter", "kilogram", "second", "ampere"]
p units.shift
p units
p units.shift(2)
p units

puts
units.unshift("yard")
p units
units.unshift("inches", "miles")
p units
