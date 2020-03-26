def intersection(list1, list2)
 #determine which array is bigger and which is smaller 
  if list1.length > list2.length
    smaller = list2
    bigger = list1
  else
    smaller = list1
    bigger = list2
  end

  result = []
  hash = {}
  
  smaller.each do |element|
    hash[element] = true
  end

  bigger.each do |element|
    if hash[element] == true
      result << element
    end
  end
  return result

  

end


