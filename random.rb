# rand method generates random number(decimal) between 0 to 1
puts rand
puts rand.round(2)
puts rand.round(4)
puts rand.round(2) * 30

puts

#exclusive ranges
# rand(n)   means  0 to <n
puts rand(100)
puts rand(101)
puts rand(1)

puts
#we can also use ranges here
puts rand(1..100)
puts rand(50...60)