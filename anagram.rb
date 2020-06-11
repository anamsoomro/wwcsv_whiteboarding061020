
#  Write a method to decide if two strings are anagrams or not.  An anagram is a word
# formed by rearranging the letters of another word, e.g., iceman is an anagram of cinema.

def anagram? (string1, string2)

  # create a hash that has each character of string1 that points to how many characters it has
  # then go through string2 and decrement that hash for every charecter 
  # if all the values in hash are 0, return true
  # if string1.length != string2.length return false

  if string1.length != string2.length
    return false
  end 
  
  letters = {}

  i = 0 
  while i < string1.length 
    if letters[string1[i]]
      letters[string1[i]] += 1
    else
      letters[string1[i]] = 1
    end
    i += 1
  end

  j = 0 
  while j < string2.length
    if letters[string2[j]]
      letters[string2[j]] -= 1
    else 
      return false
    end
    j += 1
  end

  puts letters
  anagram = true
  letters.each do |k, v|
    if v != 0
      anagram = false
    end
  end

  return anagram

end

print anagram?("hey", "he")