#include "common.h"

static void print(int len, int arr[]) {
  for (int i = len - 1; i >= 0; i--) {
    printf("%d, ", arr[i]);
  }
  printf("\n");
}

struct printer printer = {
    .name = "reverse-printer",
    .print = print,
};
