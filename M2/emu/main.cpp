#include <memory>
#include <iostream>

extern "C" void device_io(unsigned char valid, int addr,
    int len, int data, char func, char wstrb, int *resp) {
  if (!valid) return;

  /* do something here */
}

int main(int argc, char **argv) {
  /* drive ALU here */
  return 0;
}
