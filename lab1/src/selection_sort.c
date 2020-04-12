#include "common.h"

static void sort(int len, int arr[]) {
  for (int i = 0; i < len; i++) {
    int min = i;
    for (int j = i + 1; j < len; j++) {
      if (arr[j] < arr[i]) { min = j; }
    }

    if (min != i) {
      int t = arr[i];
      arr[i] = arr[min];
      arr[min] = t;
    }
  }
}

struct algo algo = {
  .name = "selection-sort", .sort = sort,
};
