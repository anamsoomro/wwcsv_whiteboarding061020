# Given a series of numbers, find a value  value = 75 Return true/false

# Value = 80 Return True
# value = 75, Return False
#      0  1   2   3  4   5    6   7    8
arr = [5, 9, 17, 23, 70, 80, 90, 100, 150]
num = 74

def binary_search(arr, num)

  first = 0 # 0
  last = arr.length - 1 # 8

  while first <= last # 0 <= 8 

    mid = (first + last) / 2 # 4

    if arr[mid] == num # false
      return true
    elsif (arr[mid] > num ) # 70 > 80 false
      last = mid - 1 
    else 
      first = mid + 1 # first = 5
    end

  end

  return false

end


print binary_search(arr, num)






# Public boolean binarySearch(int[] arr, int val){
# int mid, start, end;
# start = 0; 
# end = arr.length-1; 8

# while(start<=end){
# mid = start+end/2;
# if(arr[mid] == val)
# return true;
# else if(arr[mid]>val){
# end = mid-1;
# }
# else{
# start= mid+1;
# }
# }
# return false;


