#ifndef COMMON_H
#define COMMON_H

#include <stdio.h>
#include <stdint.h>

struct algo {
  const char *name;
  void (*sort)(int, int[]);
};

struct printer {
  const char *name;
  void (*print)(int, int[]);
};

#endif
