# time in ruby: Ti


# it will give:
# yyyy-mm-dd hh:mm:ss +timezone
# p Time.now
# p Time.new

# Time class in ruby
time = Time.now
p time, time.class

time2 = Time.new(2024)
p time2
time2 = Time.new(2024, 9)
p time2
time2 = Time.new(2024, 8, 12)
p time2

puts
t = Time.new(1999, 3, 4)
puts "My birthday was on #{t.to_s}"
p t.monday?
p t.tuesday?
p t.wednesday?
p t.thursday?
p t.friday?
p t.saturday?
p t.sunday?
# dst means daylight saving time
p t.dst?

puts
today = Time.now
p today.friday?
puts
p today.year 
p today.month
p today.day
puts
p today.hour, today.min, today.sec


puts 
someday = Time.new(2023, 1, 1)
# we can add seconds using +
p someday
p someday + 60
# adding a day
p someday + (24 * 60 * 60)
# adding a month of 30 days
p someday + (30 * 24 * 60 * 60)
puts
# yday means  day of year (like 1, 2, ...365, 366)
p someday.yday
# wday means week day (0=>Sunday, 1=>Monday,...6=>Saturday)
p someday.wday

puts
# WAP to print the date for a given day (eg. 100th) of a year N

def get_date_of_day_in_year(k, yr)
    someday = Time.new(yr, 1, 1)
    one_day = 24*60*60
    someday = someday + (k-1) * one_day
    p someday
end
get_date_of_day_in_year(1, 2023)
get_date_of_day_in_year(365, 2023)
get_date_of_day_in_year(366, 2023)


# comparing two times using operators and methods
puts
today = Time.now
birthday = Time.new(1999, 3, 4)
tomorrow = today + (24*60*60)
p today > birthday
p tomorrow > today

one_year = (365 * 24 * 60 * 60)
age = today - birthday
p age / one_year

curr_birhday = Time.new(today.year, 3, 4)
summer = Time.new(today.year, 3, 1)
winter = Time.new(today.year, 10, 1)
p curr_birhday.between?(summer, winter)

puts
# converting time object from one type to another
puts
curr_time = Time.now
p curr_time, curr_time.class
p curr_time.to_s, curr_time.to_s.class
p curr_time.to_a, curr_time.to_a.class
p curr_time.ctime, curr_time.ctime.class

# using strftime
# using strptime (require 'time')
puts
today = Time.now
p today
p today.strftime("%d/%m/%Y")
p today.strftime("%d-%b-%y")
p today.strftime("%d-%B-%Y")

#1999-03-04 (year month day)
#04-03-2000 (day month year)
puts
require 'time'
p Time.parse("1999-03-04")
p Time.parse("04-03-2000")
puts
p Time.strptime("14-04-23", "%d-%m-%y")
p Time.strptime("14-April-2023", "%d-%B-%Y")