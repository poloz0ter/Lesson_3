print "Enter day:"
day = gets.to_i
print "Enter month(1 to 12):"
month = gets.to_i
print "Enter year:"
year = gets.to_i
days_by_months = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

if (year % 4 == 0 || year % 400 == 0) && year % 100 != 0
  days_by_months[2] = 29
end

#посчитать все дни до введенного месяца и прибавить оставшиеся дни