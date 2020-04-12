#include "common.h"

static void sort(int len, int arr[]) {
  for (int i = 0; i < len; i++) {
    for (int j = i + 1; j < len; j++) {
      if (arr[i] > arr[j]) {
        int t = arr[i];
        arr[i] = arr[j];
        arr[j] = t;
      }
    }
  }
}

struct algo algo = {
  .name = "bubble-sort", .sort = sort,
};
