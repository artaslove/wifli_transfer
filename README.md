# wifli_transfer
A utility for uploading binary files to the Wifli helicopter by Interactive Toy Concepts. My original goal was to add the netcat binary, to facilitate dumping the firmware from the device. 

This script makes it possible to upload a binary file via telnet to the partially locked-down Wifli Helicopter. 

The helicopter is missing many useful binaries, including chmod, so we have to copy the correct permissions from an existing binary on the remote filesystem. 

This script requires *netcat*, *expect* and *hexdump*. 

Usage: 
>./wifli_transfer [binary file] 
