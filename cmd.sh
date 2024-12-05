python3 dhcp-bash.py 'D4:81:D7'
wget -q https://gitlab.com/wireshark/wireshark/-/raw/master/manuf # https://www.wireshark.org/tools/oui-lookup.html
grep -i dell manuf | awk '{print $1}' | grep -v / | sort -R | tail -1
python3 dhcp-bash.py `grep -i dell manuf | awk '{print $1}' | grep -v / | sort -R | tail -1`
while true;do python3 dhcp-bash.py `grep -i dell manuf | awk '{print $1}' | grep -v / | sort -R | tail -1`;sleep 1;done
