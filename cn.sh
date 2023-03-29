zmap -p123 --output-filter='sport=123' -Mudp --probe-args=file:ntp.pkt -f "saddr,udp_pkt_size" -w cn.zone -o ntp.unfiltered
cat ntp.unfiltered | sed 's/,/ /g'| awk '$2 >= 400' > CN_NTP

zmap -p3283 --output-filter='sport=3283' -Mudp --probe-args=file:ard.pkt -f "saddr,udp_pkt_size" -w cn.zone -o ard.unfiltered
cat ard.unfiltered | sed 's/,/ /g'| awk '$2 >= 300' > CN_ARD

zmap -p3702 --output-filter='sport=3702' -Mudp --probe-args=file:wsd.pkt -f "saddr,udp_pkt_size" -w cn.zone -o wsd.unfiltered
cat wsd.unfiltered | sed 's/,/ /g'| awk '$2 >= 800' > CN_WSD

zmap -p37810 --output-filter='sport=37810' -Mudp --probe-args=file:dvr.pkt -f "saddr,udp_pkt_size" -w cn.zone -o dvr.unfiltered
cat dvr.unfiltered | sed 's/,/ /g'| awk '$2 >= 600' > CN_DVR

echo "done!"
