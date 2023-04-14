# in ruby, we get the command line arguments in a
# special constant ARGV
puts "Start"
ARGV.each { |arg|
    n = arg.to_i
    puts "The square of number #{n} is #{n*n}."
}
puts "End"

# We see this:
#================================================================
# akash@LAPTOP-VJ68IMQ3 MINGW64 ~/OneDrive/Desktop/Ruby (master)
# $ ruby commandlineargs.rb 1 2 3 4
# Start
# The square of number 1 is 1. 
# The square of number 2 is 4. 
# The square of number 3 is 9. 
# The square of number 4 is 16.
# End

# akash@LAPTOP-VJ68IMQ3 MINGW64 ~/OneDrive/Desktop/Ruby (master)
# $ ruby commandlineargs.rb 1 2 3 4 5 6 7 8 -8 -2 0 -11
# Start
# The square of number 1 is 1.  
# The square of number 2 is 4.  
# The square of number 3 is 9.  
# The square of number 4 is 16. 
# The square of number 5 is 25. 
# The square of number 6 is 36. 
# The square of number 7 is 49. 
# The square of number 8 is 64. 
# The square of number -8 is 64.
# The square of number -2 is 4. 
# The square of number 0 is 0.  
# The square of number -11 is 121.
# End

# akash@LAPTOP-VJ68IMQ3 MINGW64 ~/OneDrive/Desktop/Ruby (master)
# $ ruby commandlineargs.rb
# Start
# End

# akash@LAPTOP-VJ68IMQ3 MINGW64 ~/OneDrive/Desktop/Ruby (master)
# $
#==========================================================================