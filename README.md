# minilab

first semester - run pal

|stage| lab|description                                          |
|-----|----|-----------------------------------------------------|
|  1  | M1 | chisel                                              |
|  2  | L1 | ALU based CPU (dummy, verilator drive chisel)       |
|  3  | M2 | diff test                                           |
|  4  | L2 | pass cputests on emulator                           |
|  5  | L3 | pass insttest on emulator (no exception)            |
|  6  | L4 | handshake signals (module), device                  |
|  7  | L5 | run microbench (ref)/litenes/typing on FPGA         |
|  8  | L6 | optimize microbench (pipeline)                      |
|  9  | L7 | optimize microbench (icache, IPC 1 for empty loop)  |
|  10 | L8 | optimize microbench (dcache)                        |
|  11 | L9 | pass insttest on emulator (with exception, PAL)     |


second semester - run debian

|stage| lab|description                                        |
|-----|----|---------------------------------------------------|
| 12 | L10 | pass tlbtest on emulator (nanos-lite VM on FPGA)  |
| 13 | L11 | pass intrtest on emulator (nanos-lite INT on FPGA)|
| 14 | M3  | Kconfig                                           |
| 15 | M4  | rootfs image                                      |
| 16 | M5  | configure linux and u-boot                        |
| 17 | L12 | pass linux on emulator                            |
| 18 | L13 | run linux on FPGA                                 |
| 19 | M6  | add branch prediction                             |
| 20 | M7  | out-of-order execution                            |
| 21 | L14 | run debian on FPGA                                |
| 22 | L15 | add fpu (IP core)                                 |
| 23 | L16 | run debian (with gcc)                             |
