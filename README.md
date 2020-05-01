# minilab

first semester - run pal

|stage| lab|time|description                                          |
|-----|----|----|-----------------------------------------------------|
|  1  | M1 | 1W | chisel (verilator drive chisel)                     |
|  2  | M2 | 1W | ALU based CPU (pass dummy, use 1-cycle bram)        |
|  3  | M3 | 1W | diff test (pass cputests)                           |
|  4  | L1 | 1W | handshake signals (module, use workbench), device   |
|  5  | L2 | 1W | pass insttest and microbench(TEST) on emulator      |
|  6  | L3 | 1W | run microbench/litenes/typing/PAL on FPGA           |
|  7  | L4 | 1W | optimize microbench (pipeline)                      |
|  8  | L5 | 1W | optimize microbench (icache, IPC 1 for empty loop)  |
|  9  | L6 | 1W | optimize microbench (dcache)                        |
| 10  | L7 | 1W | pass intrtest on emulator (nanos-lite INT on FPGA)  |
| 11  | L8 | 1W | run PAL                                             |

second semester - run debian

|stage| lab |time|description                                        |
|-----|-----|----|---------------------------------------------------|
| 13  | M4  | 1W | Kconfig                                           |
| 14  | M5  | 1W | rootfs image                                      |
| 15  | M6  | 1W | configure and migrate linux and u-boot            |
| 16  | L9  | 1W | pass extest on emulator                           |
| 17  | L10 | 1W | pass tlbtest on emulator (nanos-lite VM on FPGA)  |
| 18  | L11 | 1W | pass linux on emulator                            |
| 19  | L12 | 1W | run linux on FPGA                                 |
| 20  | L13 | 1W | add branch prediction                             |
| 21  | L14 | 1W | out-of-order execution                            |
| 22  | L15 | 1W | run debian on FPGA                                |
| 23  | L16 | 1W | add fpu (IP core), run debian (with gcc)          |

boss stage

|stage| lab |description                                        |
|-----|-----|---------------------------------------------------|
| 24  | L17 | OoO issue, double issue                           |
| 25  | L18 | run debian (with GUI)                             |
