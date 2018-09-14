alphabet = ("a".."z")
vowels = ["a", "e", "i", "o", "u"]
vowels_hash = {}
count = 0

alphabet.each do |letter|
  count += 1
  if vowels.include?(letter)
    vowels_hash[letter] = count
  else
    next
  end 
end
