void insertSort(int[] arr) {
  int count = 0; //Keeps track of what's sorted
  int index;
  int lowest;
  while (count < arr.length - 1) {
    index = count; //In case the default is already the lowest
    lowest = arr[count]; //Default lowest
    //println(lowest);
    for(int i = count; i < arr.length; i++) { 
      if (arr[i] < lowest) { //Compares to find lowest
        index = i; //Index of lowest
        lowest = arr[i]; //Value of lowest
      }
    }
    insertArray(arr, count, lowest, index + 1); 
    count++; //Plus 1 for sorted
    //println("Count: " + count);
    //println(lowest);
    //println(arr);
  }
}

void selectionSort(int[] arr) {
  int count = 0; //Keeps track of what's sorted
  int index;
  int lowest;
  while (count < arr.length - 1) {
    index = count; //In case the default is already the lowest
    lowest = arr[count]; //Default lowest
    //println(lowest);
    for(int i = count; i < arr.length; i++) {
      if (arr[i] < lowest) { //Compares to find lowest
        index = i; //Index of lowest
        lowest = arr[i]; //Value of lowest
      }
    }
    //insertArray(arr, count, lowest, index); 
    swap(arr, index, count); //Swaps lowest with the next unsorted index
    count++; //Plus 1 for sorted
    //println("Count: " + count);
    //println(lowest);
    //println(arr);
  }
}

void bubbleSort(int[] arr) {
  Boolean sorted = false;
  while (!sorted) {
    sorted = true;
    for (int i = 0; i < arr.length - 1; i++) {
      if (arr[i] > arr[i + 1]) {
        sorted = false;
        swap(arr, i, i + 1);
      }
    }
  }
}