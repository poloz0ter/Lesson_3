print "Enter day:"
day = gets.to_i
print "Enter month(1 to 12):"
month = gets.to_i
print "Enter year:"
year = gets.to_i
days_in_months = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

if year % 4 == 0 && year % 100 != 0
  days_in_months[2] = 29
elsif year % 400 == 0
  days_in_months[2] = 29
end

if month == 1
  puts "Date index number is #{day}"
  exit
end

date_index = 0
count = 0
days_in_months.each do |x|
  date_index += x
  break if count == month-1
  count +=1
end
date_index += day

puts "Date index number is #{date_index}"
