# lets talk about splat arguments
# it is just like var len args in java

def summation(*numbers)
    sum = 0
    numbers.each { |num| sum += num}
    sum
end
puts
p summation(10, 20, 30, 40, 50, 60, 70, 80, 90, 100)
p summation(10, 20)
p summation(10)
# below 2 are same
p summation()
p summation

def factorial(v, i) 
    fact = 1
    n = v
    while v > 1
        fact = fact * v 
        v = v - 1
    end
    puts "The factorial of #{i+1}th argument #{n} is #{fact}"
end

def factorials(*numbers)
    numbers.each_with_index do |v,i|
        factorial(v, i)
    end
    puts
end

puts
factorials(1, 12, 5, 9, 0)
factorials(10, 8, 13)
factorials(11)

# object pointers vs object copies
puts
xs = [2, 3, 4, 5]
ys = [2, 3, 4, 5]
# comparing values 
p xs == ys
# comparing addresses
p xs.object_id == ys.object_id
# always keeps on changing
p xs.object_id, ys.object_id


puts
zs = [1, 2, 3]
ws = zs
p zs == ws
# comparing addresses
p zs.object_id == ws.object_id
# always keeps on changing
p zs.object_id, ws.object_id



# in ruby everything is an object (except blocks)
# objects occupy heap space
# OS allocates memory on behalf od ruby
# each object has a different mem location (virtual address)



# how can we create a duplicate/copy array (using dup() method)
# use:   newarr = arr.dup
puts
arr = [1.2, 2.3, 3.4, 4.5, 5.6, 6.7, 7.8, 8.9, 9.0]
p arr
p arr.dup
puts
p arr == arr.dup
p arr.object_id == arr.dup.object_id


# lets talk about two more predicate methods (take block)
# they are:    all?    any?
# both are evaluated till array end always(even though ruby could be smarter)
puts
arr = [2, 4, 6, 7, 8, 10]
p arr.any? {|n| n.odd?}
arr = arr.map {|n| n+1}
p arr.any? {|n| n.even?}

puts
arr = [2, 4, 6, 0, 8, 10]
p arr.all? {|n| n.even?}
arr = arr.map {|n| n+11}
p arr.all? {|n| n.odd?}

# any?    all?    with    {.....} block 
arr = [1, 3, 5, 7, 9, 0, 12, 13]
puts
p arr

puts
p arr.any? {|num| 
            puts "Evaluating...#{num}"
            num == 11
           } 

puts
p arr.all? { |num| 
            puts "Evaluating...#{num}"
            num >= 1
         }


# do...end with any? all? doesnt work
# always giving true for below:
# p arr.all?  do  |num| 
#                 puts "Evaluating...#{num}"
#                 num >= 1
#             end       


# uniq method on arrays
puts
arr = [1, 2, 3, 3, 2, 1, 4, 5, 6, 6, 7, 8, 9]
p arr
p arr.uniq
p arr
arr.uniq!
p arr

# WAP for uniq
def myuniq(arr) 
    final = []
    arr.each{
        |num| final << num unless final.include?(num)
    }
    final
end
puts
p myuniq(arr)


# compact method on arrays
puts
arr = [1, 2.3, nil, "football", true, 23, false, nil, "cricketer"]
p arr.compact
p arr
arr.compact!
p arr

# WAP to write own compact  method on arrays
puts
arr = [1, 2.3, nil, "football", true, 23, false, nil, "cricket"]
p arr
def mycompact(array)
    final = []
    array.each do |x| final << x unless x.nil? end
    final
end
p mycompact(arr)

# inject() and reduce() methods on array
# both are the same
puts
myarr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

ans = myarr.reduce(0) { |p, c|
  p + c
}
p ans

ans = myarr.inject(1) { |p, c|
    p * c
}
p ans

# Note: reduce === inject

#zip() method
# uswed to combine many arrays of same length
puts
xs = [1, 2, 3, 4, 5]
ys = ["A", "B", "C", "D", "E"]
p xs.zip(ys)
p ys.zip(xs)
p xs,ys
zs = [true, false, false, true]
p zs.zip(xs, ys)
# zip can take many parameters


# WAP to write custom myzip() method
def myzip(arr1, arr2) 
    final = []
    i = 0
    n = arr1.length
    while i < n
      final << [arr1[i], arr2[i]]
      i += 1
    end
    final
end

def myzip2(arr1, arr2) 
    final = []
    arr1.each_with_index do |v, i| 
        final << [v, arr2[i]]
    end

    final
end

a1 = [1, 2, 3, 4, 5, 6]
a2 = [true, false, true, true, false, false]
puts
p myzip(a1, a2)
p myzip2(a1, a2)

# shuffle method
puts
arr = [1, 2, 3, true, false, 12.3, "hello", "buddy"]
p arr
p arr.shuffle
p arr

# sample(n) method
# used to select randomly n elements(non repeating)
puts
arr = [1, 2, 3, true, false, 12.3, "hello", "buddy"]
p arr.sample  # any one elem from arr
p arr.sample(0) #[]
p arr.sample(1)
p arr.sample(arr.length)
p arr.sample(10) #same as above

def mysample(arr = nil, n = nil)
    final = []
    return nil if (arr.nil? || arr.empty?)
    return arr[rand(arr.length)] if n.nil?
    arr = arr.shuffle
    # or use:   arr.shuffle!
    n = arr.length if n >= arr.length
    while n>0
        final << arr[n-1]
        n = n - 1
    end
    final
end
puts
arr = [1, 2, 3, true, false, 12.3, "hello", "buddy"]
p mysample()  # any one elem from arr
p mysample(arr) #[]
p mysample(arr, 1)
p mysample(arr, arr.length)
p mysample(arr,10) #same as above

p mysample([1, 2, nil], 0)
p mysample([1, 2, nil], 3)

# multiply an array with a number
# simply repeats the array those many times in a linear way
puts
arr = [1, "A", true, 2.3]
p arr * 3
p arr * 0
p arr
puts

# WAP to write custom multiply * with array 
def mymultiply(arr, n)
    final = []
    n.times{ |i|
        arr.each{
            |elem| final << elem
        }
    }
    final
end
puts
p mymultiply(arr, 3)
p mymultiply(arr, 0)
p mymultiply(arr, 3) == arr * 3
p mymultiply(arr, 3).length == (arr * 3).length


# concat() and uniq() method
xs = [1, 2, 3, 3, 2, 1, 1, 4, 5, 6, 4]
p xs
p xs.uniq
p xs
xs.uniq!
p xs

puts
xs  = [1, 2, 3, 4, 2, 3, 4, 5, 6, 7, 6]
ys = [1, 2, 3, 2, 7, 8]
p xs, ys
# concat modifies xs
p xs.concat(ys)
p xs, ys

# WAP to implement custom uniq
def myuniq(arr)
    final = []
    arr.each{
        |elem| final << elem unless final.include?(elem)
    }
    final
end
puts
xs = [1, 2, 3, 3, 2, 1, 1, 4, 5, 6, 4]
p xs.uniq
p myuniq(xs)

# WAP to implemet custom concat
def myconcat(arr1, arr2)
   arr2.each{
    |e| arr1 << e
   }
   arr1
end

puts
xs  = [1, 2, 3, 4, 2, 3, 4, 5, 6, 7, 6]
ys = [1, 2, 3, 2, 7, 8]
p xs
p xs.concat(ys)
p xs

puts
xs  = [1, 2, 3, 4, 2, 3, 4, 5, 6, 7, 6]
ys = [1, 2, 3, 2, 7, 8]
p xs
p myconcat(xs, ys)
p xs



# union intersection and difference

# UNION
puts
xs = [1, 2, 4, 1, 2, 3]
ys = [1, 3, 2, 7, 5, 6, 5]
p xs, ys

puts
p xs | ys


def myunion(arr1, arr2)
    arr1.dup.concat(arr2).uniq
end
puts
p myunion(xs, ys)



# INTERSECTION
puts
xs = [1, 2, 4, 1, 2, 3, 3, 4, 51, 33, 33, 23]
ys = [1, 3, 2, 7, 5, 6, 5, 1]
p xs, ys
puts
p xs & ys


def myinter(arr1, arr2)
    final = []
    arr1.dup.uniq.each { |elem|
       final << elem if arr2.include?(elem)
    }
    final
end
puts
p myinter(xs, ys)


# DIFFERENCE
puts
xs = [1, 2, 4, 1, 2, 3, 3, 4, 51, 33, 33, 23]
ys = [1, 3, 2, 7, 5, 6, 5, 1]
p xs, ys
puts
p xs - ys

def mydiff(arr1, arr2)
    final = []
    arr1.dup.each { |elem|
       final << elem unless arr2.include?(elem)
    }
    final
end
puts
p mydiff(xs, ys)





