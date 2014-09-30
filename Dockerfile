FROM progrium/busybox

RUN opkg-install nmap
RUN wget -O - curlmyip.com > /tmp/my-ip.txt
RUN nmap -v -p1-65535 -iL /tmp/my-ip.txt
