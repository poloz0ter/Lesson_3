alphabet = ("a".."z")
vowels = ["a", "e", "i", "o", "u"]
vowels_hash = {}

alphabet.each_with_index do |letter,index|
  if vowels.include?(letter)
    vowels_hash[letter] = index + 1
  else
    next
  end 
end
