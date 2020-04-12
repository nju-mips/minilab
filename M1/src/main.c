#include "common.h"

extern const struct algo algo;
#if CONFIG_USE_PRINTER
extern const struct printer printer;
#endif

int arr[] = {2, 8, 4, 10, 9, 1, 6, 7, 5, 3};

#define ARR_SIZE(a) ((sizeof(a)) / (sizeof(*a)))

int main() {
  printf("sort with %s\n", algo.name);
  algo.sort(ARR_SIZE(arr), arr);

#if CONFIG_USE_PRINTER
  printf("print with %s\n", printer.name);
  printer.print(ARR_SIZE(arr), arr);
#else
  printf("unable to print the array\n");
#endif
  return 0;
}
