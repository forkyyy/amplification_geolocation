zmap -p53 --output-filter='sport=53' -Mudp --probe-args=file:dns.pkt -f "saddr,udp_pkt_size" -w th.zone -o dns.unfiltered -T11 -i vlan159
cat dns.unfiltered | sed 's/,/ /g'| awk '$2 >= 3000' > TH_DNS

zmap -p123 --output-filter='sport=123' -Mudp --probe-args=file:ntp.pkt -f "saddr,udp_pkt_size" -w th.zone -o ntp.unfiltered -T11 -i vlan159
cat ntp.unfiltered | sed 's/,/ /g'| awk '$2 >= 400' > TH_NTP

zmap -p3283 --output-filter='sport=3283' -Mudp --probe-args=file:ard.pkt -f "saddr,udp_pkt_size" -w th.zone -o ard.unfiltered -T11 -i vlan159
cat ard.unfiltered | sed 's/,/ /g'| awk '$2 >= 300' > TH_ARD

zmap -p3702 --output-filter='sport=3702' -Mudp --probe-args=file:wsd.pkt -f "saddr,udp_pkt_size" -w th.zone -o wsd.unfiltered -T11 -i vlan159
cat wsd.unfiltered | sed 's/,/ /g'| awk '$2 >= 800' > TH_WSD

zmap -p37810 --output-filter='sport=37810' -Mudp --probe-args=file:dvr.pkt -f "saddr,udp_pkt_size" -w th.zone -o dvr.unfiltered -T11 -i vlan159
cat dvr.unfiltered | sed 's/,/ /g'| awk '$2 >= 600' > TH_DVR

zmap -p37020 --output-filter='sport=37020' -Mudp --probe-args=file:sadp.pkt -f "saddr,udp_pkt_size" -w th.zone -o sadp.unfiltered -T11 -i vlan159
cat sadp.unfiltered | sed 's/,/ /g'| awk '$2 >= 800' > TH_SADP

echo "done!"