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

  basket[name] = {price_per_one => quantity}
end

puts "Your buy: #{basket}"
total_price = 0
basket.each do |name, value|
  value.each do |price, quantity|
  puts "Total amount for the goods: \"#{name}\"--> $#{price * quantity}"
  total_price += price * quantity
  end
end

puts "Total basket price: $#{total_price}"
