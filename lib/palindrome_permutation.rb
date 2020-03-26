def palindrome_permutation?(string)
  if string.empty?
    return true
  end
  #split the string
  string_array = string.split("")

  #put the sting into a hash
  hash = Hash.new(0)
  string_array.each do |letter|
    hash[letter] += 1
  end
  

  #key must have an even value number or one key must only have 1 as value to be considered a palindrome
  values = hash.values
  number_1_value = values.count(1)

  if values.any? { |value| value.even? } && number_1_value == 1
    return true
  else
    return false
  end
end
