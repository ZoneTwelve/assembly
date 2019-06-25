#include <stdio.h>
char name[16];
int main(){
  printf("What is your name: ");
  scanf("%s", name);
  printf("hi %s\n", name);
  return 0;
}
