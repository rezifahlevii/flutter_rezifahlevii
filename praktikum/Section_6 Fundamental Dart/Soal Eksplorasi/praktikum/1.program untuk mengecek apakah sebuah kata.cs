#include <stdio.h>
#include <string.h>
 
int main(void)
{
  printf("## Program Kata / Angka Palindrom Bahasa C ## \n");
  printf("=========================================== \n\n");
 
  char input[50];
  int i,panjang_input;
 
  printf("Input kata/angka: ");
  gets(input);
 
  panjang_input = strlen(input);
  printf("\n");
 
  for (i=0; i<panjang_input/2; i++) {
    if (input[i] != input[panjang_input-i-1]) {
      printf("%s bukan palindrome!",input);
      break;
    }
  }
 
  if (i==panjang_input/2) {
    printf("%s adalah palindrome!",input);
  }
 
  printf("\n");
  return 0;
}
