#!/usr/bin/env python3
import sys
import binascii
from scapy.all import *

oui=str(sys.argv[1])
rm=oui+str(RandMAC())[-9:]

sendp(Ether(dst='ff:ff:ff:ff:ff:ff',src=rm)/IP(src='0.0.0.0',dst='255.255.255.255')/UDP(sport=68,dport=67)/BOOTP(op=1,chaddr=binascii.unhexlify(rm.replace(':','')),xid=RandInt())/DHCP(options=[('message-type','discover'),('end')]))
