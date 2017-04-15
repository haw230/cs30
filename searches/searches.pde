int linearSearch(int[] arr, int num) {
   for(int i = 0; i < arr.length; i++) {
     if(arr[i] == num) {
       return i; 
     }
   }
   return -1;
}

int binarySearch (int[] arr, int num, int low, int high) {
  if(arr[int((low + high) / 2)] == num) {
    return int((low + high) / 2);
  }
  if(arr[int((low + high) / 2)] < num) {
    return binarySearch(arr, num, int((low + high) / 2), high);
  } else if((arr[int((low + high) / 2)] > num)) {
    return binarySearch(arr, num, low, int((low + high) / 2));
  } 
  return -1;
}