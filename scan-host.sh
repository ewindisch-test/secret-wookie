ip=$(wget -O - curlmyip.com > /tmp/my-ip.txt)
nmap $ip
