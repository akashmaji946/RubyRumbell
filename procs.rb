# what is a proc?
# a proc is an object in ruby that we can associate 
# with a method like a block

# we can define proc using two ways: {....}   or   do....end

# lets see the problem with blocks
puts
a = [1, 2, 3, 4, 5]
b = [11, 12, 13, 14, 15]
c = [21, 22, 32, 42, 52]
p a, b, c

as = a.map { |num| num ** 2}
bs = b.map { |num| num ** 2}
cs = c.map { |num| num ** 2}
puts
p as, bs, cs

# we see that redundancy is craeted at 12, 13, 14

# lets define a proc

squared = Proc.new {
    |num| num**2
}
puts
ass = a.map(&squared)
bss = b.map(&squared)
css = c.map(&squared)
p ass, bss, css

# lets see a concise way
puts
xs, ys, zs = [a, b, c].map { |arr|
   arr.map(&squared)
}
p xs, ys, zs


# currency converter
amount_usd = [10, 20, 35, 65, 86, 102]
puts
to_inr = Proc.new do |amount|
            amount * 80
         end

amount_inr = amount_usd.map(&to_inr)
p amount_usd, amount_inr

# temperature converter
fahrenheits = [110, 136, 98, 650, 230]
to_celcius = Proc.new {|temp| 
                    (temp-32.0)*5.0/9.0
            }
puts
celcius = fahrenheits.map(&to_celcius)
p fahrenheits, celcius


# we can return bool from proc as well
puts
ages = [12, 35, 78, 65, 56, 45]

is_old = Proc.new do |age| age > 55 end

old = ages.select(&is_old)
young = ages.reject(&is_old)

p ages, old, young


# more on procs
puts
printer = Proc.new{
    puts "hello hi i am printing"
}

5.times(&printer)

puts
printer.call

puts
5.times{
    printer.call
}

puts


# passing methods as procs

is_even = Proc.new{ |num| num%2==0}
by_2 = Proc.new{|num| num*2}
puts
arrs = [1, 2, 3, 4, 5, 6, 7]
p arrs
p arrs.map(&is_even)
p arrs.map(&by_2)

p arrs.select(&is_even)
p arrs.reject(&is_even)

puts
# converting method to proc using syntax:-     &:fn_name
p arrs.select{|num| num.even?}
p arrs.reject{|num| num.odd?}
p arrs.select(&:even?)
p arrs.reject(&:odd?)


# lets use proc as parameter to amethod
puts
def talk_about(name, &about)
    puts "I am going to talk about #{name}"
    about.call
    puts "I am done."
end

good_things = Proc.new{
    puts "he is a good boy"
    puts "he is very intelligent"
}

talk_about("akash maji", &good_things)


# lets make that proc parameterized
puts
def talk_about_again(name, &about)
    puts "I am going to talk about #{name} again"
    about.call(name)
    puts "I am done again."
end

good_things_again = Proc.new{ |name|
    puts "#{name} is a good boy."
    puts "#{name} is very intelligent."
    puts "#{name} is very handsome."
}

talk_about_again("akash maji", &good_things_again)



# using yield
puts
def talk_about_again2(name)
    puts "I am going to talk about #{name} again"
    yield(name) if block_given?
    puts "I am done again."
end

good_things_again2 = Proc.new{ |name|
    puts "#{name} is a good boy."
    puts "#{name} is very intelligent."
    puts "#{name} is very handsome."
}

talk_about_again2("akash maji", &good_things_again2)
puts
talk_about_again2("akash maji") { |name|
puts "#{name} is a good boy."
puts "#{name} is very intelligent."
puts "#{name} is very handsome."
}
puts
talk_about_again2("akash maji")



# can we make it conditional
# lets make that proc parameterized
puts
def talk_about_again3(name, &about)
    puts "I am going to talk about #{name} again 3"
    about.call(name) unless about.nil?
    puts "I am done again 3."
end

good_things_again3 = Proc.new{ |name|
    puts "#{name} is a good boy 3."
    puts "#{name} is very intelligent 3."
    puts "#{name} is very handsome 3."
}
good_places_again3 = Proc.new{ |name|
    puts "#{name} is from xyz place"
    puts "#{name} lives in abc"
    puts "#{name} will be in pqr"
}


talk_about_again3("akash maji", &good_things_again3)
puts
talk_about_again3("akash maji", &good_places_again3)
puts
talk_about_again3("akash maji")

