# range => an object in ruby that tells me about a sequence of objects
# range could be numeric, or alphabetic

incl_rg = 1..10
excl_rg = 1...10

# first and last methods give bounds
p incl_rg.first
p incl_rg.last
p excl_rg.first
p excl_rg.last
puts

# notice difference
p incl_rg.first(5)
p incl_rg.last(5)
p excl_rg.first(5)
p excl_rg.last(5)

#checking class of range object
p incl_rg.class, excl_rg.class

# better to use () around Range object
# getting size
p (1...1000).size
# p (1...1000).length

#alphabets
# all characters from a to z in ASCII order
puts
alpha = "a".."z"
p alpha
puts alpha
p alpha.first(26)
puts
alphabet = "A".."z"
p alphabet.first(52)
p alphabet.first(52 + 6)
puts
alphanum = "0".."z"
p alphanum.first(60)
puts

# gives upto what is possible
vowels = "a".."u"
p vowels.first(26)
puts

# how to check membership in ruby
# use include?() predicate method
puts
letters = "a".."z"
p letters.include?("a")
p letters.include?("z")

letters2 = "a"..."z"
p letters2.include?("a")
p letters2.include?("z")

# there is another method for membership
puts
letters = "a".."z"
p letters.member?("k")
p letters.member?("A")

# there is one very different way also
# we use === operator
puts
letters = "a".."z"
p letters === "a"
p letters === "z"
p letters === "k"
p letters === "A"


#converting a range to an array using to_a method
puts
obj_range =  "A".."Z"
p obj_range
p obj_range.class
puts

obj_array = obj_range.to_a
p obj_array
p obj_array.class
puts

#extract multiple chars or elems
puts
story = "Once upon a time in a land far, far away..."

puts story[27..39]
puts story.slice(27..39)
puts story[27...39]
puts story.slice(27...39)
puts story[27..200]
puts story.slice(27..200)
puts story[32..-9]
puts story[32...-9]
puts story.slice(32..-9)

story[12..15] = "season"
puts story
story[12, 6] = "week"
puts story

numbers = [1, 3, 5, 7, 9, 15, 21, 18, 6]

p numbers[4..6]
p numbers.slice(4..6)
p numbers[4...6]


# case with range
puts
def calculate_test_grade(grade)
    case grade
        when 90..100 then "A"
        when 80..89 then "B"
        when 70..79 then "C"
        when 60..69 then "D"
        when 50..59 then "E"
        when 0..49 then "F"
        else "NA"
    end
end
  
  puts calculate_test_grade(90)
  puts calculate_test_grade(100)
  puts calculate_test_grade(83)
  puts calculate_test_grade(78)
  puts calculate_test_grade(62)
  puts calculate_test_grade(55)
  puts calculate_test_grade(13)
  puts calculate_test_grade(101)
  puts calculate_test_grade(-10)
  puts calculate_test_grade("Nonsense")