FROM progrium/busybox

RUN opkg-install nmap
RUN wget -O - curlmyip.com > /tmp/my-ip.txt
RUN nmap -n -Pn --max-retries 1 -T3 -p22,80,443,2375,5000 -v -iL /tmp/my-ip.txt 
