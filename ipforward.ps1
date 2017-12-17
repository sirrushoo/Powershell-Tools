# Script for IpForwarding in windows you will edit to fit your network
# config and port you which you are forwarding
#
# netsh
# interface ipv4 (can use ipv6 if needed)
# show interfaces (you will see and "idx"
# show interface idx#
# set interface idx# forwarding=enabled
#
# One liner edit as per target network
netsh interface portproxy add v4tov4 listenport=4422 listenaddress=192.168.1.111 connectport=80 connectaddress=192.168.0.33

# Removal of forwarding

# netsh interface portproxy delete v4tov4 listenport=4422 listenaddress=192.168.1.111
