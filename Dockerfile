FROM progrium/busybox

RUN opkg-install nmap
ADD scan-host.sh
RUN sh scan-host.sh
