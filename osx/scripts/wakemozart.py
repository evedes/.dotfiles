#! /usr/bin/python

# wol
#
# Wake on LAN
#
# Use:
# wol computer1
# wol computer1 computer2
# wol 00:11:22:33:44:55
#
# Author: San Bergmans
#         www.sbprojects.net
#

import sys, struct, socket

# Configuration variables
broadcast = ['192.168.1.255']
wol_port = 9

def WakeOnLan(ethernet_address):

    # Construct 6 byte hardware address
    add_oct = ethernet_address.split(':')
    if len(add_oct) != 6:
        print "\n*** Illegal MAC address\n"
        print "MAC should be written as 00:11:22:33:44:55\n"
        return
    hwa = struct.pack('BBBBBB', int(add_oct[0],16),
        int(add_oct[1],16),
        int(add_oct[2],16),
        int(add_oct[3],16),
        int(add_oct[4],16),
        int(add_oct[5],16))

    # Build magic packet

    msg = '\xff' * 6 + hwa * 16

    # Send packet to broadcast address using UDP port 9

    soc = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    soc.setsockopt(socket.SOL_SOCKET, socket.SO_BROADCAST,1)
    for i in broadcast:
        soc.sendto(msg,(i,wol_port))
    soc.close()

WakeOnLan('00:1B:FC:C1:CC:90')
