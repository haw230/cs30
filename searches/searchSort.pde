

/*int[] rand(int[] arr) {
   int count = 0;
   int rand = 0;
   while(count < arr.length) {
     rand = int(random(arr.length * 2)) + 1;
     if(linearSearch(arr, rand) == -1) {
       arr[count] = rand;
       count++;
     }
   }
   return arr;
}*/

/*int[] sortie(int[] arr) {
  int count = 0;
  int rand = 0;
  while (count < arr.length) {
    rand = int(random(arr.length * 3)) + 16;
    int index = 0;
    while (arr[index] != rand) {
      if(arr[index] > rand || index == count) {
        insertArray(arr, index, rand, count);
         count++;
      } else{
        index++;
      }
    }
  }
  return arr;
}*/


void draw() {
  noLoop();
  /*int[] numbers = new int[10];
  for(int i = 0; i < 10; i++) {
    numbers[i] = i + int(random(123)); 
  }*/
  int[] numbers2 = {2,0,4,1,5,3};
  //int[] numbers3 = {3,2,1,30,4,6,5};
  mergeSort(numbers2, 0, numbers2.length - 1);
  println(numbers2);
}