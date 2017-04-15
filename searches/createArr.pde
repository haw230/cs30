void insertArray(int[] arr, int place, int val, int total) {  //place is where inserted, val is value inserted, total is what i
  for (int i = total; i > place; i--) { //3,6,1 -> ?,3,6
    arr[i] = arr[i - 1];
  }
  arr[place] = val;
}

void shuffleStuff(int[] arr) {
  for(int i = 0, j = arr.length * 2; i < j; i++) {
    swap(arr, int(random(arr.length - 1)), int(random(arr.length - 1)));
  }
}

void swap(int[] arr, int x, int y) {
  int temp = arr[y];
  arr[y] = arr[x];
  arr[x] = temp;
}