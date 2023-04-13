
# map and collect both are similar
puts
arr = [1, 2, 3, 4, 5]
sqr = []
arr.each { |num|
    sqr.push(num*num)
}
p arr, sqr

# lets do it using map
puts
arr = [1, 2, 3, 4, 5]
sqr = arr.map { 
    |num| num * num
}
p arr, sqr

# WAP to upcase each string in a string array
puts
strings = ["this", "is", "a", "nicely", "written", "ruby", "source"]
p strings.map { |string| string.upcase }

strings = ["hahaa", "mamma", "pappa"]
nils = strings.map { |string| puts string.upcase }
p nils