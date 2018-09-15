print "Enter day:"
day = gets.to_i
print "Enter month(1 to 12):"
month = gets.to_i
print "Enter year:"
year = gets.to_i
days_in_months = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

days_in_months[2] = 29 if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0

date_index = days_in_months[0...month].sum + day
puts "Date index number is #{date_index}"
