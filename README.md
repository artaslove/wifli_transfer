# wifli_transfer
A utility for uploading binary files to the Wifli helicopter by Interactive Toy Concepts. My original goal was to facilitate dumping the firmware from the device. 

This script makes it possible to transfer a binary file via telnet to the Wifli Helicopter. 

This script requires *nc*, *hexdump* and *expect*. 

Usage: 
>./wifli_transfer [binary file in current directory] 

This can also be used on other devices that only allow a telnet connection, with some modifications to the script header. 
