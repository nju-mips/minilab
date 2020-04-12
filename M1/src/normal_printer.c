#include "common.h"

static void print(int len, int arr[]) {
  for (int i = 0; i < len; i++) { printf("%d, ", arr[i]); }
  printf("\n");
}

struct printer printer = {
    .name = "normal-printer",
    .print = print,
};
