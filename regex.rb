# regular expressions in ruby are a powerful tool
# regexp help in pattern matching and string recognition and text processing

# start_with? method
phrase = "The ruby programming lang is amazing"
# case sensitive matching
puts
p phrase.start_with?("The")
p phrase.start_with?("The ruby")
p phrase.start_with?("the")

# custom start_with? method
def mystartwith(str, substr)
    # optional
    # return false if substr.length > str.length
    str[0, substr.length] == substr
end
puts
p mystartwith(phrase, "The")
p mystartwith(phrase, "The ruby")
p mystartwith(phrase, "the")

# end_with? method
phrase = "The ruby programming lang is amazing"
# case sensitive matching
puts
p phrase.end_with?("zing")
p phrase.end_with?("amazing")
p phrase.end_with?("amazing!")

# custom end_with? method
def myendwith(str, substr)
    # optional
    # return false if substr.length > str.length
    str[-substr.length, substr.length] == substr
end
puts
p myendwith(phrase, "zing")
p myendwith(phrase, "amazing")
p myendwith(phrase, "amazing!")

# include() method
phrase = "The ruby programming lang is amazing"
puts
p phrase.include?("ramming")
p phrase.include?("g lang")
p phrase.include?("amaze")

# custom include? method
def myinclude(string, substr)
    len = substr.length
    0.upto(string.length){ |index|
        return true if string[index, len] == substr
    }
    false
end
puts
p myinclude(phrase, "ramming")
p myinclude(phrase, "g lang")
p myinclude(phrase, "amaze")


# beginning to use regexp
puts
phrase = "The Ruby language is AWESOME!"
p phrase =~ /Ruby/
p phrase =~ /The/
# wildcard char
p phrase =~ /./
# space
p phrase =~ / /

# more on regex
puts
phrase = "I can be reached at =91-790-970-8490 or at RegexGuy@funny.com"
p phrase.scan(/R/)
p phrase.scan(/e/)
# match Re in that order
p phrase.scan(/Re/)
# below 2  are same
# [xyz] means either x or y or z
p phrase.scan(/[Rre]/)
p phrase.scan(/[erR]/)


puts
# match character  d
p phrase.scan(/d/)
# match digit     \d
p phrase.scan(/\d/)
# match number(digits)   \d+
p phrase.scan(/\d+/)

# in scan we can execute a block each time we match a pattern
puts
phrase.scan(/\d+/) {|num| puts num.length}


puts
# more on wild card character      .
# . means any char 
phrase = "The Ruby programming language v 2.7.12 is awe-some and awe-inspiring!"
p phrase.scan(/.ing/)
p phrase.scan(/a.e/)
p phrase.scan(/.i.g/)
p phrase.scan(/\d.\d.\d+/)
p phrase.scan(/.g./)
p phrase.scan(/.Ruby./)


puts
phrase = "I wrote an essay. It is very nice. I should get A+. That is atleast 9 out of 10"
# digit
p phrase.scan(/\d/)
# digits
p phrase.scan(/\d+/)
# charcter d
p phrase.scan(/d/)
# any character
p phrase.scan(/./)
# character .
p phrase.scan(/\./)

# space character
p phrase.scan(/ /)
p phrase.scan(/\s/)

# \D   nondigits
p phrase.scan(/\D/).length
# \S   nonspace
p phrase.scan(/\S/).length

# WAP to count the number of words in a string
def num_words(str)
 str.scan(/\S+/).length
end

puts
p num_words(phrase)

# anchor characters
# \A    means at start
# \z means at end
puts
phrase = "they love to do the amazing programming"
p phrase.scan(/the/)
p phrase.scan(/\Athe/)
p phrase.scan(/ing/)
p phrase.scan(/ing\z/)

# exclude characters using ^
puts
# count number of nonspace characters
phrase = "this is a lovely day"
p phrase.scan(/[^\s]/).length

# WAP to count the number of consonant characters
# in a string that can contain alphanumeric chars
# and comma and dot and space only

def exclude_others(str)
    # exclude vowels, digits, spaces, dot, comma, space
    str.scan(/[^aeiouAEIOU,\d\s\.]/).length
end

puts
p exclude_others("I am very happy 24 years old, and doing good.")


# sub(x, y)
puts
phrase = "the ruby language is the fantastic"
p phrase.sub("the", "The")
p phrase.sub("ruby", "Rubylang")
p phrase.sub("is", "")
# gsub(regex, y)
puts
p phrase.gsub("the", "a")
phrase.gsub!("the", "a")
p phrase
number = "(+91)-790-970 (8490)"
p number.gsub!(/[\(\)\-+\s]/, "")
p number









