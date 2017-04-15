/*void quickSort(int[] arr, int low, int high) {
  int temp;
  int pivotPlace = high/2;
  int pivot = arr[pivotPlace];
  for(int i = low; i < pivotPlace; i++) {
    if(arr[i] > pivot) {
      temp = arr[i];
      insertArray(arr, i, arr[i], pivotPlace + i);
    }
  }
  for(int i = high; i > pivotPlace; i++) {
    if(arr[i] < pivot) {
      insertArray(arr, high, arr[]);
    }
  }
  println(arr);
} */
void quickSort(int[] arr, int low, int high) {
  int temp;
  int pivot = (low + high)/2;
  for(int i = low; i < pivot; i++) { //left side
    if(arr[i] > arr[pivot]) {
      temp = arr[i];
      for(int j = i; j < pivot; j++) {
        arr[j] = arr[j + 1]; 
      }
      arr[pivot] = temp;
      pivot--;
      i--;
    }
  }
  
  for(int i = (low + high)/2 + 1; i <= high; i++) { //right side
    if(arr[i] < arr[pivot]) {
      temp = arr[i];
      for(int j = i; j > pivot; j--) {
        arr[j] = arr[j - 1]; 
      }
      arr[pivot] = temp;
      pivot++;
    }
  }
  
  //recurse
  /*if(pivot - low > 2) {
     quickSort(arr, low, pivot - 1);
  } 
  if(high - pivot > 2) {
     quickSort(arr, pivot + 1, high);
  }*/
  /*for(int i = high; i > pivotPlace; i++) {
    if(arr[i] < pivot) {
      insertArray(arr, high, arr[]);
    }
  } */
} 

void mergeSort(int[] arr, int low, int high) {
  int mid = (low + high)/2;
  if(high - low >= 1) {
    mergeSort(arr, low, mid);
  }
  if(mid - low >= 1) {
    mergeSort(arr, mid + 1, high);
  }
  for(int i = low; i <= mid; i++) {
    for(int j = mid + 1; j <= high; j++) {
      println(i, j);
       if(arr[j] < arr[i]) { //if i is less, put i in j's place
         insertArray(arr, i, arr[j], j); //j = 3, i = 1
         i--;
       }
    }
  }
}