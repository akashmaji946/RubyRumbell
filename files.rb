

# lets read from a file
File.open("fileRead.txt", "r").each do |line|
    puts line
end

# lets write to a file
# w mode deletes everything and writes from top
# when file doesnt exist, it creates and writes
File.open("fileWrite.txt", "w") do |file|
    file.puts "Hello World, I am new line"
    file.print "This is a line."
    file.write "I am also here.\n"
    file.print "This is really cool.\n"
end
# lets append to a file
# a mode adds from the last point
# behaves as w mode when file doesnt exist
File.open("fileWrite.txt", "a") do |file|
    file.puts "Hello World, I am new line"
    file.print "This is a line."
    file.write "I am also here.\n"
    file.print "This is really cool.\n"
end


# rename and delete a file
File.open("renamed.txt", "w") do |file|
    file.puts "Hello World, I am new line in renamed.txt"
end

File.rename("renamed.txt", "renamed_again.txt")

# check if a file exists or not
p File.exist?("renamed.txt")
p File.exist?("renamed_again.txt")
p File.exist?("fileRead.txt")
p File.exist?("fileWrite.txt")


# delete a file
File.open("to_delete.txt", "w") do |file|
    file.puts "Hello World, I am new line in to_delete.txt"
end
puts
p File.exist?("to_delete.txt")
File.delete("to_delete.txt")
p File.exist?("to_delete.txt")

# deleting a file that doesnt exist gives error
# File.delete("pta_nhi.txt")

puts
File.open("to_delete.txt", "w") do |file|
    file.puts "Hello World, I am new line in to_delete.txt"
end
# better to check before delete
p File.exist?("to_delete.txt")
File.delete("to_delete.txt") if File.exist?("to_delete.txt")
p File.exist?("to_delete.txt")