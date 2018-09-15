basket = {}

loop do
  puts "enter \"stop\" to exit"           #получаем информацию о товарах
  print "enter Product Name: "
  name = gets.chomp
  break if name == 'stop'
  print "enter Price Per One: "
  price_per_one = gets.to_f
  print "enter Number Of Purchases: "
  quantity = gets.to_f

  basket[name] = {price_per_one: price_per_one, quantity: quantity}   #item = {price: price, quantity: quantity}
end
puts "Your buy: #{basket}"

total_price = 0
basket.each do |name, value|
  price = value[:price_per_one] * value[:quantity]
  total_price += price
  puts "Total amount for the goods: \"#{name}\"--> $#{price}"
  puts "Total price: $#{total_price}"
end
