def permutations?(string1, string2)
  #split first sting
  string1_array = string1.split("")
  #split the second string
  string2_array = string2.split("")

  #put the first sting into a hash
  hash = Hash.new(0)
  string1_array.each do |letter|
    hash[letter] += 1
  end

  #iterate through second string array with the hash
  string2_array.each do |element|
    if hash[element] >= 1
      hash[element] -= 1
    end
  end
  if hash.value?(1) == false
    return true 
  else 
    return false 
  end
end
