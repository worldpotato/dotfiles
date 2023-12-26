ip a show wlp5s0 | grep "inet " | awk '{print $2}'
