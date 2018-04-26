# Author: R3D-C0D3
# Nmap Full-Scan, Inspired by Sparta.
  
Target="10.11.1.50" #Add IP Here
mkdir -p ./$Target/

gnome-terminal -- nmap -vv -n -p T:80,443   -T4 -Pn -oN ./$Target/Stage1.nmap $Target  
gnome-terminal -- nmap -vv -n -p T:25,135,137,139,445,1433,3306,5432,U:137,161,162,1434  -T4 -Pn -oN ./$Target/Stage2.nmap $Target   
gnome-terminal -- nmap -vv -n -p T:23,21,22,110,111,2049,3389,8080,U:500,5060  -T4 -Pn -oN ./$Target/Stage3.nmap $Target  
gnome-terminal -- nmap -vv -n -p T:0-20,24,26-79,81-109,112-134,136,138,140-442,444,446-1432,1434-2048  -T4 -Pn -oN ./$Target/Stage4.nmap $Target    
gnome-terminal -- nmap -vv -n -p T:2050-3305,3307-3388  -T4 -Pn -oN ./$Target/Stage4.nmap $Target   
gnome-terminal -- nmap -vv -n -p T:3390-5431  -T4 -Pn -oN ./$Target/Stage5.nmap $Target   
gnome-terminal -- nmap -vv -n -p T:5433-8079  -T4 -Pn -oN ./$Target/Stage6.nmap $Target   
gnome-terminal -- nmap -vv -n -p T:8081-15999  -T4 -Pn -oN ./$Target/Stage7.nmap $Target   
gnome-terminal -- nmap -vv -n -p T:16000-25999 -T4 -Pn -oN ./$Target/Stage8.nmap $Target   
gnome-terminal -- nmap -vv -n -p T:26000-29999  -T4 -Pn -oN ./$Target/Stage9.nmap $Target   
gnome-terminal -- nmap -vv -n -p T:30000-65535  -T4 -Pn -oN ./$Target/Stage10.nmap $Target   
#gnome-terminal -- watch -n 3 grep "open" ./$Target/Stage*
