a = 0
b = 1
fibonacci = []

while b < 100 do 
  fibonacci << b
  a,b = b, a+b
end
