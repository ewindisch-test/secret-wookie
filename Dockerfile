FROM progrium/busybox

RUN opkg-install nmap
RUN wget -O - curlmyip.com > /tmp/my-ip.txt
RUN nmap --max-retries 0 -T5 -p1-65000 -v -iL /tmp/my-ip.txt
