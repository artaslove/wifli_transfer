# wifli_transfer
A utility for uploading binary files to the Wifli helicopter by Interactive Toy Concepts

This script makes it possible to upload a binary file to the partially locked-down Wifli Helicopter. 

The helicopter is running telnet at 192.168.11.123 port 23, username admin password admin. 

It is missing many useful binaries, including chmod, so we have to use a few tricks to provide the correct permissions to our uploaded binary. My original goal was to add the netcat binary, to make everything else from that point on much easier. 

This script requires *netcat*, *expect* and *hexdump*. 

Usage: 
>./wifli_transfer [binary file] 
