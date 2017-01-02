# wifli_transfer
A utility for uploading binary files to the Wifli helicopter by Interactive Toy Concepts. My original goal was to facilitate dumping the firmware from the device. 

This script makes it possible to upload a binary file via telnet to the Wifli Helicopter. 

This script requires *netcat*, *expect* and *hexdump*. 

Usage: 
>./wifli_transfer [binary file] 

This can also be used on other devices that only allow a telnet connection, with some modifications. 
