arr1 = [3, 5, 6, 7, 8]
arr2 = [2, 8, 9, 12, 18, nil, nil, nil, nil, nil]

# merge arr1 into arr 2. maintain sort

def sort_problem (arr1, arr2)

  i1 = arr1.length - 1
  i2 = arr2.length - 1
  i2_non0 = arr1.length - 1

  while i1 >= 0 && i2 >= 0 do 
    if arr1[i1] > arr2[i2_non0]
      arr2[i2] = arr1[i1]
      i2 -=1
      i1 -= 1
    else 
      arr2[i2] = arr2[i2_non0]
      i2_non0 -= 1
      i2 -= 1
    end
  end

  return arr2
  
end


print sort_problem(arr1, arr2)