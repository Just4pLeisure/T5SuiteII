* Prepare SAAB T7 ECU for flash management (erase and program).
* This script needs to be executed before flash can be erased or programmed.
* Created by Patrik Servin
* Version 1.0
*
* Reset ECU
reset
* Stop execution
stop
*
mm 0xfffa00
0x61C2.
*
mm 0xfffa04
0x7F08.
*
mm 0xfffa11
0x0000.
*
mm 0xfffa13
0x0000.
*
mm 0xfffa15
0x00FE.
*
mm 0xfffa17
0x0011.
*
mm 0xfffa19
0x007B.
*
mm 0xfffa1b
0x007B.
*
mm 0xfffa1d
0x0085.
*
mm 0xfffa1f
0x0008.
*
mm 0xfffa22
0x0250.
*
mm 0xfffa24
0x0129.
*
mm 0xfffa27
0x0000.
*
mm 0xfffa41
0x000F.
*
mm 0xfffa44
0x2FFF.
*
mm 0xfffa46
0x0001.
*
mm 0xfffa48
0x0006.
*
mm 0xfffa4c
0xF003
0x6830
0x0006
0x1030
0x0000
0x0000
0xF003
0x5030
0xF003
0x3030
0xFF00
0x7BF0
0x0000
0x0000
0x0000
0x0000
0x0000
0x0000
0xFFF8
0x2BC7
0x0000
0x0000
0x0000
0x0000
0x0000
0x0000.
*
mm 0xfffa4a
0x6BB0.
*
mm 0xfffa4e
0x6830
0x0006
0x1030
0x0000
0x0000
0xF003
0x5030
0xF003
0x3030
0xFF00
0x7BF0
0x0000
0x0000
0x0000
0x0000
0x0000
0x0000
0xFFF8
0x2BC7.
*
*Set up for flashing
mm 0xfffa04
0x7f00.
*
mm 0xfffa21
0x00.
*
mm 0xfffa4a
0x6b70.
*0x7b70.
*
mm 0xfffa50
0x0007.
*
mm 0xfffa52
0x3370.
*
* enable internal 2kByte RAM of 68332
* and map it to address $100000
mm $fffb04
$1000.
* tell BD32 to use internal RAM $100000 for target resident driver
driver $100000
*
cls
* ECU is now prepared for flash programming or erasing.