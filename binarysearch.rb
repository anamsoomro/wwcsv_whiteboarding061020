# Given a series of numbers, find a value  value = 75 Return true/false

Value = 80 Return True
value = 75, Return False
# 0  1  2   3  4   5  6   7    8
[5, 9, 17, 23,70, 80 90, 100, 150]

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