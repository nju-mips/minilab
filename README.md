# minilab

first semester - run linux

|stage| lab|time|description                                          |
|-----|----|----|-----------------------------------------------------|
|  1  | M1 | 1W | chisel (verilator drive chisel)                     |
|  2  | M2 | 1W | ALU based CPU (pass dummy, use 1-cycle bram)        |
|  3  | M3 | 1W | diff test (pass cputests)                           |
|  4  | L1 | 1W | handshake signals (module, use workbench), device   |
|  5  | L2 | 2W | pass insttest and microbench(TEST) on emulator      |
|  6  | L3 | 1W | run microbench/litenes/typing/PAL on FPGA           |
|  7  | L4 | 2W | pass extest on emulator                             |
|  8  | L5 | 2W | pass tlbtest on emulator (nanos-lite VM on FPGA)    |
|  9  | L6 | 1W | pass intrtest on emulator (nanos-lite INT on FPGA)  |
| 10  | L7 | 1W | pass linux on emulator                              |
| 11  | L8 | 1W | run linux on FPGA (ulite as tty)                    |
| 12  | M4 | ?W | add your device (audio, VGA), add AM/linux driver   |


second semester - optimize and run debian

|stage| lab |time|description                                        |
|-----|-----|----|---------------------------------------------------|
| 13  | M5  | 1W | Kconfig                                           |
| 14  | M6  | 1W | rootfs image                                      |
| 15  | M7  | 1W | configure and migrate linux and u-boot            |
| 16  | L9  | 4W | optimize microbench (pipeline)                    |
| 17  | L10 | 2W | optimize microbench (icache, IPC 1 for empty loop)|
| 18  | L11 | 2W | optimize microbench (dcache)                      |
| 20  | L13 | 1W | add branch prediction                             |
| 21  | L14 | 1W | out-of-order execution                            |
| 22  | L15 | 1W | run debian on FPGA                                |
| 23  | L16 | 1W | add fpu (IP core), run debian (with gcc)          |

boss stage

|stage| lab |description                                        |
|-----|-----|---------------------------------------------------|
| 24  | L17 | OoO issue, double issue                           |
| 25  | L18 | run debian (with GUI)                             |
