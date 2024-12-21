# Nmap Scanning Script

## Overview
This script is a simple command-line tool for performing various types of network scans using Nmap, a powerful network exploration tool and security/port scanner. The script prompts the user for an IP address to scan, the name of the output file to store results, and the type of scan to perform. Based on the selected option, it runs the appropriate Nmap command and saves the results to the specified file.

## Features
- **Multiple Scan Types**: Includes options for basic scans, OS detection, TCP scans, stealthy scans, and more.
- **User-Friendly Interface**: Guides the user through input steps and provides detailed prompts for scan type selection.
- **Customizable Output**: Allows users to specify a file to save scan results.

## How It Works
1. The script displays a menu of scan options.
2. The user enters an IP address and selects a scan type.
3. Based on the user’s choice, the script runs the corresponding Nmap command.
4. The results of the scan are saved to the user-specified file.

## Prerequisites
- **Nmap**: Ensure Nmap is installed on your system. You can download it from [Nmap's official website](https://nmap.org/).
- **Bash Shell**: This script is designed for Linux/Unix environments with a Bash shell.

## Usage
### Steps to Run the Script:
1. Clone the repository or download the script.
2. Make the script executable:
   ```bash
   chmod +x nmap_scan.sh
   ```
3. Run the script:
   ```bash
   ./nmap_scan.sh
   ```
4. Follow the prompts:
   - Enter the IP address to scan.
   - Enter the name of the file to store results.
   - Select the type of scan by entering the corresponding number.


## Scan Options
Here are the types of scans you can perform:

1. **Basic Scan**: Scans common web ports (80, 443).
2. **OS Detection**: Detects the operating system of the target.
3. **TCP Scan**: Performs a TCP connection scan.
4. **Stealthy Scan**: Uses SYN packets to perform a stealth scan on ports 80 and 443.
5. **Aggressive Scan**: Enables multiple advanced Nmap options for detailed scanning.
6. **Service Version Detection**: Combines SYN and TCP scans.
7. **RPC Scan**: Scans for Remote Procedure Call (RPC) services.
8. **Ping Scan Only**: Checks if the target is up using pings.
9. **No Ping Scan**: Skips the ping step and directly scans.
10. **TCP SYN Ping**: Sends SYN packets to check if the host is up.
11. **TCP ACK Ping**: Sends ACK packets for host detection.
12. **UDP Ping**: Uses UDP packets to detect the host.
13. **SCTP Init Ping**: Uses SCTP INIT chunks to discover hosts.
14. **ICMP Echo Ping**: Sends ICMP echo requests.
15. **ICMP Timestamp Ping**: Uses ICMP timestamp requests.
16. **ICMP Address Mask Ping**: Sends ICMP address mask requests.
17. **IP Protocol Ping**: Checks IP protocol responses.
18. **ARP Ping**: Uses ARP requests to find devices on local networks.

## Error Handling
- If an invalid option is entered, the script displays an error message and exits.
- If the IP address or output file is invalid, the corresponding Nmap command will fail, and an error will be shown.

## Contributions
Contributions are welcome! If you have ideas for improving the script or adding new features, feel free to fork the repository and submit a pull request.

---

**Disclaimer**: Use this script responsibly. Unauthorized scanning of networks or systems is illegal and unethical. Always obtain proper authorization before running any scans.

