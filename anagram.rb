
#  Write a method to decide if two strings are anagrams or not.  An anagram is a word
# formed by rearranging the letters of another word, e.g., iceman is an anagram of cinema.

def anagram? (string1, string2)
  # create a hash that has each character of string 1 and how many charecters it has
  # than go through string2 and decrement that hash for every charecter 
  # if all the values in hash are 0, return true
  # if string1.length != string2.length return false
  if string1.length != string2.length
    return false
  end 
  
  letters = {}

  i = 0 
  while i < string1.length 
    if letters[i]
      letters[i] += 1
    else
      letters[i] = 1
    end
    i += 1
  end

  j = 0 
  while i < string2.length
    if letters[string2[i]]
      letters[string2[i]] -= 1
    else 
      return false
    end
    i += 1
  end

  return true

end

anagram?("hey", "yeh")