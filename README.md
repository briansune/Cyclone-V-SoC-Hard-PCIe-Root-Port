# Cyclone V SoCFPGA Altera GEN5 Hard PCIe Root Port Example

This project demonstrate the root port design under Hard PCIe fabric

on C5 GEN5 SoCFPGA.

Remarks:

1) Make sure the address expansion is used
2) The insert driver could introduce race condition
3) MSI or MSI-X must be binded and functioning for NVMe

# Example PCIe NVMe - PM991a

From this log we can see the interrupt is binded to "Altera PCIe MSI #### Edge".

```
cat /proc/interrupts
           CPU0       CPU1
 24:       5373       5897 GIC-0  29 Edge      twd
 25:          0          0 GIC-0 199 Level     timer0
 26:          0          0 GIC-0 201 Level     timer2
 27:          0          0 GIC-0 202 Level     timer3
 28:        322          0 GIC-0 194 Level     ttyS0
 30:          4          0 GIC-0 183 Level     ff705000.spi
 31:          0          0 GIC-0 186 Level     fff00000.spi
 34:          0          0 GIC-0 152 Level     eth0
 35:          0          0 GIC-0 203 Edge      ffd02000.watchdog
 36:      11394          0 GIC-0 171 Level     dw-mci
 37:          0          0 GIC-0 208 Level     arm-pmu
 38:          0          0 GIC-0 209 Level     arm-pmu
 39:          0          0 GIC-0 207 Level     ff706000.fpgamgr
 40:          0          0 GIC-0 191 Level     ffc05000.i2c
 41:         48          0 GIC-0 193 Level     ffc07000.i2c
 45:          0          0 GIC-0 136 Level     ffe01000.pdma
 46:          0          0 GIC-0 137 Level     ffe01000.pdma
 47:          0          0 GIC-0 138 Level     ffe01000.pdma
 48:          0          0 GIC-0 139 Level     ffe01000.pdma
 49:          0          0 GIC-0 140 Level     ffe01000.pdma
 50:          0          0 GIC-0 141 Level     ffe01000.pdma
 51:          0          0 GIC-0 142 Level     ffe01000.pdma
 52:          0          0 GIC-0 143 Level     ffe01000.pdma
 56:         10          0  Altera PCIe MSI 524288 Edge      nvme0q0
 57:         24          0  Altera PCIe MSI 524289 Edge      nvme0q1
 58:          0          0  Altera PCIe MSI 524290 Edge      nvme0q2
IPI0:          0          0  CPU wakeup interrupts
IPI1:          0          0  Timer broadcast interrupts
IPI2:        282        338  Rescheduling interrupts
IPI3:       1579       4667  Function call interrupts
IPI4:          0          0  CPU stop interrupts
IPI5:          0          0  IRQ work interrupts
IPI6:          0          0  completion interrupts
Err:          0


Node                  Generic               SN                   Model                                    Namespace  Usage                      Format           FW Rev
--------------------- --------------------- -------------------- ---------------------------------------- ---------- -------------------------- ---------------- --------
/dev/nvme0n1          /dev/ng0n1                  S65YNE0T207365 PM991a NVMe Samsung 128GB                0x1          2.28  GB / 128.04  GB    512   B +  0 B   26304039


Smart Log for NVME device:nvme0n1 namespace-id:ffffffff
critical_warning                        : 0
temperature                             : 33 °C (306 K, 91 °F)
available_spare                         : 100%
available_spare_threshold               : 50%
percentage_used                         : 0%
endurance group critical warning summary: 0
Data Units Read                         : 462760 (236.93 GB)
Data Units Written                      : 580601 (297.27 GB)
host_read_commands                      : 1806550
host_write_commands                     : 1828791
controller_busy_time                    : 22
power_cycles                            : 108
power_on_hours                          : 6
unsafe_shutdowns                        : 69
media_errors                            : 0
num_err_log_entries                     : 0
Warning Temperature Time                : 0
Critical Composite Temperature Time     : 0
Temperature Sensor 1                    : 33 °C (306 K, 91 °F)
Thermal Management T1 Trans Count       : 718
Thermal Management T2 Trans Count       : 2
Thermal Management T1 Total Time        : 1476
Thermal Management T2 Total Time        : 0
```

# FIO test under PM991a on NGFF Key-A+E

```
test: (g=0): rw=write, bs=(R) 64.0KiB-64.0KiB, (W) 64.0KiB-64.0KiB, (T) 64.0KiB-64.0KiB, ioengine=libaio, iodepth=32
fio-3.41
Starting 1 process
Jobs: 1 (f=1)
test: (groupid=0, jobs=1): err= 0: pid=689: Mon Feb 23 21:02:15 2026
  write: IOPS=3092, BW=193MiB/s (203MB/s)(512MiB/2649msec); 0 zone resets
    slat (usec): min=203, max=3504, avg=217.97, stdev=47.51
    clat (usec): min=7623, max=19521, avg=10044.05, stdev=632.31
     lat (usec): min=7853, max=19728, avg=10262.02, stdev=639.54
    clat percentiles (usec):
     |  1.00th=[ 7898],  5.00th=[ 9896], 10.00th=[10028], 20.00th=[10028],
     | 30.00th=[10028], 40.00th=[10028], 50.00th=[10028], 60.00th=[10028],
     | 70.00th=[10028], 80.00th=[10028], 90.00th=[10028], 95.00th=[10028],
     | 99.00th=[12387], 99.50th=[14484], 99.90th=[16909], 99.95th=[18220],
     | 99.99th=[19530]
   bw (  KiB/s): min=191744, max=199936, per=100.00%, avg=198118.40, stdev=3566.13, samples=5
   iops        : min= 2996, max= 3124, avg=3095.60, stdev=55.72, samples=5
  lat (msec)   : 10=74.08%, 20=25.92%
  cpu          : usr=11.59%, sys=71.15%, ctx=7751, majf=0, minf=16
  IO depths    : 1=0.1%, 2=0.1%, 4=0.1%, 8=0.1%, 16=0.2%, 32=99.6%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.1%, 64=0.0%, >=64=0.0%
     issued rwts: total=0,8192,0,0 short=0,0,0,0 dropped=0,0,0,0
     latency   : target=0, window=0, percentile=100.00%, depth=32

Run status group 0 (all jobs):
  WRITE: bw=193MiB/s (203MB/s), 193MiB/s-193MiB/s (203MB/s-203MB/s), io=512MiB (537MB), run=2649-2649msec

Disk stats (read/write):
  nvme0n1: ios=27/8053, sectors=3128/1030784, merge=0/0, ticks=17/80398, in_queue=80415, util=0.00%


test: (g=0): rw=read, bs=(R) 64.0KiB-64.0KiB, (W) 64.0KiB-64.0KiB, (T) 64.0KiB-64.0KiB, ioengine=libaio, iodepth=32
fio-3.41
Starting 1 process
Jobs: 1 (f=1)
test: (groupid=0, jobs=1): err= 0: pid=710: Mon Feb 23 21:02:50 2026
  read: IOPS=2978, BW=186MiB/s (195MB/s)(512MiB/2750msec)
    slat (usec): min=172, max=1119, avg=310.90, stdev=79.79
    clat (usec): min=474, max=14523, avg=10387.78, stdev=402.08
     lat (usec): min=923, max=14936, avg=10698.68, stdev=406.02
    clat percentiles (usec):
     |  1.00th=[10159],  5.00th=[10159], 10.00th=[10290], 20.00th=[10290],
     | 30.00th=[10290], 40.00th=[10421], 50.00th=[10421], 60.00th=[10421],
     | 70.00th=[10421], 80.00th=[10552], 90.00th=[10552], 95.00th=[10552],
     | 99.00th=[10945], 99.50th=[11076], 99.90th=[13435], 99.95th=[13960],
     | 99.99th=[14484]
   bw (  KiB/s): min=185088, max=191616, per=99.73%, avg=190131.60, stdev=2830.08, samples=5
   iops        : min= 2892, max= 2994, avg=2970.80, stdev=44.22, samples=5
  lat (usec)   : 500=0.01%, 1000=0.01%
  lat (msec)   : 2=0.04%, 4=0.07%, 10=0.21%, 20=99.66%
  cpu          : usr=6.51%, sys=93.31%, ctx=29, majf=0, minf=530
  IO depths    : 1=0.1%, 2=0.1%, 4=0.1%, 8=0.1%, 16=0.2%, 32=99.6%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.1%, 64=0.0%, >=64=0.0%
     issued rwts: total=8192,0,0,0 short=0,0,0,0 dropped=0,0,0,0
     latency   : target=0, window=0, percentile=100.00%, depth=32

Run status group 0 (all jobs):
   READ: bw=186MiB/s (195MB/s), 186MiB/s-186MiB/s (195MB/s-195MB/s), io=512MiB (537MB), run=2750-2750msec

Disk stats (read/write):
  nvme0n1: ios=7825/0, sectors=1001600/0, merge=0/0, ticks=5609/0, in_queue=5609, util=0.00%
```
