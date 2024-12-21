cat << "EOF"
 _____ _       ___  _   _ _____ _____ 
/  ___| |     / _ \| | | |_   _/  __ \
\ `--.| |    / /_\ \ | | | | | | /  \/
 `--. \ |    |  _  | | | | | | | |    
/\__/ / |____| | | \ \_/ /_| |_| \__/\
\____/\_____/\_| |_/\___/ \___/ \____|
EOF
printf "Enter the IP address to scan: "
read ip

printf "Enter the name of the file you would like to create and store the result in: "
read output_file

# ask about the type of scan to run
printf "\nSelect the type of scan:\n"
printf "1. Basic scan (ports 80, 443)\n"
printf "2. OS detection scan\n"
printf "3. TCP scan\n"
printf "4. Stealthy scan (SYN scan and Skip Ping)\n"
printf "5. Aggressive scan\n"
printf "6. service version detection\n"
printf "7. RPC scan\n"
printf "8. ping scan only\n"
printf "9. no ping scan\n"
printf "10. TCP SYN ping\n"
printf "11. TCP ACK ping\n"
printf "12. UDP ping\n"
printf "13. SCTP init ping\n"
printf "14. ICMP echo ping\n"
printf "15. ICMP Timestamp ping\n"
printf "16. ICMP address mask ping\n"
printf "17. IP protocol ping\n"
printf "18. ARP ping\n"
printf "Enter your choice (1/2/3/4/5): "
read scan_choice




case $scan_choice in
    1)
        # port scan on 80 and 443
        printf "\nPerforming a basic scan on ports 80 and 443...\n"
        nmap -p 80,443 "$ip" -oN "$output_file"
        ;;
    2)
        # OS detection scan
        printf "\nPerforming OS detection scan...\n"
        nmap -O "$ip" -oN "$output_file"
        ;;
    3)
        # tcp scan
        printf "\nPerforming TCP SCAN...\n"
        nmap -sT "$ip" -oN "$output_file"
        ;;
    4)
        # Stealthy scan
        printf "\nPerforming stealthy scan...\n"
        nmap -sS -p 80,443 "$ip" -oN "$output_file"
        ;;
    5)
        # Aggressive scan
        printf "\nPerforming aggressive scan...\n"
        nmap -A "$ip" -oN "$output_file"
        ;;
    6)
        # ALL IN ONE
        printf "\nPerforming mixed scan...\n"
        nmap -sS -sT "$ip" -oN "$output_file"
        ;;
    7)
        # RPC scan
        printf "\nPerforming RPC scan...\n"
        nmap -sR "$ip" -oN "$output_file"
        ;;
    8)
        # ping scan only
        printf "\nPerforming only ping scan...\n"
        nmap -sP "$ip" -oN "$output_file"
        ;;
    9)
        # No ping scan
        printf "\nPerforming no ping scan...\n"
        nmap -PN "$ip" -oN "$output_file"
        ;;
    10)
        # TCP SYN PING
        printf "\nPerforming TCP SYN PING...\n"
        nmap -PS "$ip" -oN "$output_file"
        ;;
    11)
        # TCP ACK PING
        printf "\nPerforming TCP ACK PING...\n"
        nmap -PA "$ip" -oN "$output_file"
        ;;
    12)
        # UDP PING
        printf "\nPerforming UDP PING...\n"
        nmap -PU "$ip" -oN "$output_file"
        ;;
    13)
        # SCTP INIT PING
        printf "\nPerforming SCTP PING...\n"
        nmap -PY "$ip" -oN "$output_file"
        ;;
    14)
        # ICMP ECHO PING
        printf "\nPerforming ICMP ECHO PING...\n"
        nmap -PE "$ip" -oN "$output_file"
        ;;
    15)
        # ICMP TIMESTAMP PING
        printf "\nPerforming ICMP TIMESTAMP PING...\n"
        nmap -PP "$ip" -oN "$output_file"
        ;;
    16)
        # ICMP ADDRESS MASK PING
        printf "\nPerforming only ping scan...\n"
        nmap -PM "$ip" -oN "$output_file"
        ;;
    17)
        # IP PROTOCOL PING
        printf "\nPerforming only ping scan...\n"
        nmap -PO "$ip" -oN "$output_file"
        ;;
    18)
        # ARP PING
        printf "\nPerforming only ping scan...\n"
        nmap -PR "$ip" -oN "$output_file"
        ;;
    *)
        printf "\nInvalid choice. Exiting.\n"
        exit 1
        ;;
esac


printf "\nScan completed. Results saved in '%s'.\n" "$output_file"
